/*
 * Versione web del Manuale Utente.
 *
 * La pagina non contiene il testo del manuale: lo legge dal sorgente LaTeX e lo
 * converte in HTML al caricamento. Cosi' il PDF e la versione web non possono
 * divergere, che e' quanto la sezione "Versioni e formati del manuale" dichiara
 * al lettore.
 *
 * Stessa impostazione di glossario.js, con una differenza: qui si prova prima
 * il percorso relativo, perche' il workflow di deploy pubblica l'intero
 * repository e quindi il .tex e' servito dallo stesso dominio della pagina. Il
 * raw di GitHub resta come ripiego per l'apertura in locale via file://.
 */

const TEX_SOURCES = [
  "../PB/doc_esterna/manuale-utente/manuale-utente.tex",
  "https://raw.githubusercontent.com/thebitless-group-swe/thebitless.github.io/main/PB/doc_esterna/manuale-utente/manuale-utente.tex",
];

// Le figure restano dove sono nel repository: la pagina le indirizza, non le duplica.
const ASSET_BASE = "../PB/doc_esterna/manuale-utente/";

// Delimitatore dei segnaposto usati durante la conversione. Deve essere un
// carattere che non puo' comparire nel sorgente: con uno spazio, un numero gia'
// presente nel testo ("almeno 10 caratteri") verrebbe scambiato per un
// segnaposto e sostituito con marcatura altrui.
const MARK = String.fromCharCode(0);
const MARK_RE = new RegExp(MARK + "(\\d+)" + MARK, "g");

/* ────────────────────────────  UTILITA' DI SCANSIONE  ─────────────────────── */

/**
 * Legge un gruppo fra graffe a partire da s[start] === "{", gestendo
 * l'annidamento. Restituisce [contenuto, indiceDopoLaGraffaChiusa].
 */
function readGroup(s, start) {
  if (s[start] !== "{") return [null, start];
  let depth = 0;
  let out = "";
  let i = start;
  for (; i < s.length; i++) {
    const c = s[i];
    if (c === "\\") {
      // Una graffa preceduta da backslash e' un carattere, non un delimitatore.
      out += c + (s[i + 1] ?? "");
      i++;
      continue;
    }
    if (c === "{") {
      depth++;
      if (depth === 1) continue;
    } else if (c === "}") {
      depth--;
      if (depth === 0) {
        i++;
        break;
      }
    }
    out += c;
  }
  return [out, i];
}

/** Salta gli argomenti opzionali fra parentesi quadre: \includegraphics[...] */
function skipOptional(s, i) {
  while (s[i] === "[") {
    const end = s.indexOf("]", i);
    if (end === -1) return i;
    i = end + 1;
  }
  return i;
}

/**
 * Sostituisce ogni occorrenza di \nome{arg1}...{argN} con il risultato di fn.
 * Scritta a mano e non con una RegExp perche' gli argomenti contengono a loro
 * volta graffe: \daverificare{... "Second Brain"} e \textbf{\texttt{x}} non
 * sopravvivono a [^}]*.
 */
function replaceCommand(src, name, argc, fn) {
  const marker = "\\" + name;
  let out = "";
  let i = 0;
  for (;;) {
    const at = src.indexOf(marker, i);
    if (at === -1) {
      out += src.slice(i);
      return out;
    }
    // Evita di confondere \link con \linklungo: il carattere seguente non deve
    // poter far parte di un nome di comando.
    const next = src[at + marker.length];
    if (next && /[A-Za-z]/.test(next)) {
      out += src.slice(i, at + marker.length);
      i = at + marker.length;
      continue;
    }
    out += src.slice(i, at);
    let j = skipOptional(src, at + marker.length);
    const args = [];
    let ok = true;
    for (let k = 0; k < argc; k++) {
      while (src[j] === " " || src[j] === "\n") j++;
      const [arg, after] = readGroup(src, j);
      if (arg === null) {
        ok = false;
        break;
      }
      args.push(arg);
      j = after;
    }
    if (!ok) {
      // Comando senza i suoi argomenti: cade senza portarsi via il resto.
      i = at + marker.length;
      continue;
    }
    out += fn.apply(null, args);
    i = j;
  }
}

/** Elimina i commenti LaTeX, lasciando intatto il \% che e' un carattere. */
function stripComments(tex) {
  return tex
    .split("\n")
    .map(function (line) {
      let out = "";
      for (let i = 0; i < line.length; i++) {
        if (line[i] === "\\") {
          out += line[i] + (line[i + 1] ?? "");
          i++;
          continue;
        }
        if (line[i] === "%") return out;
        out += line[i];
      }
      return out;
    })
    .join("\n");
}

function escapeHtml(s) {
  return s.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}

/* ────────────────────────────  CONVERSIONE IN LINEA  ─────────────────────── */

// Riempita in fase di numerazione: etichetta LaTeX -> numero da mostrare.
const LABELS = new Map();

/**
 * Contenuto di \texttt: e' codice, quindi non riceve le legature tipografiche.
 * Senza questa distinzione il marcatore Markdown |---|---| della tabella dei
 * costrutti diventerebbe una lineetta lunga, cioe' qualcosa che l'utente non
 * puo' digitare.
 */
function inlineCode(src) {
  const s = src
    .replace(/\\textasciitilde\{\}/g, "~")
    .replace(/\\textasciitilde/g, "~")
    .replace(/\\textasciigrave\{\}/g, "`")
    .replace(/\\textasciigrave/g, "`")
    .replace(/\\textbackslash\{\}/g, "\\")
    .replace(/\\textbackslash/g, "\\")
    .replace(/\\ldots\{\}/g, "…")
    .replace(/\\ldots/g, "…")
    .replace(/\\&/g, "&")
    .replace(/\\%/g, "%")
    .replace(/\\_/g, "_")
    .replace(/\\\$/g, "$")
    .replace(/\\#/g, "#")
    .replace(/\\\{/g, "{")
    .replace(/\\\}/g, "}");
  return escapeHtml(s)
    .replace(/\\[A-Za-z]+/g, "")
    .replace(/[{}]/g, "")
    .trim();
}

function inline(src) {
  let s = src;

  const HTML = [];
  const stash = function (html) {
    HTML.push(html);
    return MARK + (HTML.length - 1) + MARK;
  };

  s = replaceCommand(s, "daverificare", 1, function (a) {
    return stash('<mark class="mu-verify">DA VERIFICARE: ' + inline(a) + "</mark>");
  });
  s = replaceCommand(s, "daverificarenudo", 0, function () {
    return stash('<mark class="mu-verify">DA VERIFICARE</mark>');
  });

  const anchor = function (url) {
    const u = escapeHtml(url.trim());
    return stash('<a href="' + u + '" target="_blank" rel="noopener">' + u + "</a>");
  };
  s = replaceCommand(s, "linklungo", 1, anchor);
  s = replaceCommand(s, "link", 1, anchor);
  s = replaceCommand(s, "url", 1, anchor);
  s = replaceCommand(s, "href", 2, function (url, text) {
    return stash(
      '<a href="' + escapeHtml(url.trim()) + '" target="_blank" rel="noopener">' +
        inline(text) +
        "</a>"
    );
  });

  s = replaceCommand(s, "texttt", 1, function (a) {
    return stash("<code>" + inlineCode(a) + "</code>");
  });
  s = replaceCommand(s, "textbf", 1, function (a) {
    return stash("<strong>" + inline(a) + "</strong>");
  });
  s = replaceCommand(s, "textit", 1, function (a) {
    return stash("<em>" + inline(a) + "</em>");
  });
  s = replaceCommand(s, "emph", 1, function (a) {
    return stash("<em>" + inline(a) + "</em>");
  });
  s = replaceCommand(s, "uline", 1, function (a) {
    return stash("<u>" + inline(a) + "</u>");
  });
  s = replaceCommand(s, "textsubscript", 1, function (a) {
    return stash("<sub>" + inline(a) + "</sub>");
  });
  s = replaceCommand(s, "textsuperscript", 1, function (a) {
    return stash("<sup>" + inline(a) + "</sup>");
  });

  s = replaceCommand(s, "ref", 1, function (a) {
    return LABELS.get(a) ?? "?";
  });
  s = replaceCommand(s, "pageref", 1, function () {
    return "";
  });
  s = replaceCommand(s, "label", 1, function () {
    return "";
  });
  s = replaceCommand(s, "newline", 0, function () {
    return stash("<br>");
  });
  s = replaceCommand(s, "vspace", 1, function () {
    return "";
  });
  s = replaceCommand(s, "hspace", 1, function () {
    return "";
  });
  s = replaceCommand(s, "setlength", 2, function () {
    return "";
  });
  s = replaceCommand(s, "addtocounter", 2, function () {
    return "";
  });
  s = replaceCommand(s, "multicolumn", 3, function (_n, _align, content) {
    return inline(content);
  });

  // Comandi tipografici senza effetto in HTML.
  const DROP = [
    "noindent", "centering", "small", "footnotesize", "normalsize",
    "begingroup", "endgroup", "newpage", "clearpage", "hline",
    "endfirsthead", "endhead", "endfoot", "endlastfoot", "arraybackslash",
    "raggedright", "allowbreak", "protect", "relax",
  ];
  for (const drop of DROP) s = s.split("\\" + drop).join("");

  // Caratteri speciali e legature tipografiche.
  s = s
    .replace(/\\LaTeX\{\}/g, "LaTeX")
    .replace(/\\LaTeX/g, "LaTeX")
    .replace(/\\ldots\{\}/g, "…")
    .replace(/\\ldots/g, "…")
    .replace(/\\dots/g, "…")
    .replace(/\\textasciitilde\{\}/g, "~")
    .replace(/\\textasciitilde/g, "~")
    .replace(/\\textasciigrave\{\}/g, "`")
    .replace(/\\textasciigrave/g, "`")
    .replace(/\\textbackslash\{\}/g, "\\")
    .replace(/\\textbackslash/g, "\\")
    .replace(/\\textless/g, "<")
    .replace(/\\textgreater/g, ">")
    .replace(/---/g, "—")
    .replace(/``/g, "“")
    .replace(/''/g, "”")
    .replace(/\\&/g, "&")
    .replace(/\\%/g, "%")
    .replace(/\\_/g, "_")
    .replace(/\\\$/g, "$")
    .replace(/\\#/g, "#")
    .replace(/\\\{/g, "{")
    .replace(/\\\}/g, "}")
    .replace(/\\ /g, " ")
    .replace(/~/g, " ");

  s = escapeHtml(s);

  // Residui: comandi non riconosciuti e graffe rimaste sole.
  s = s
    .replace(/\\[A-Za-z]+/g, "")
    .replace(/[{}]/g, "")
    .replace(/[ \t\n]+/g, " ")
    .trim();

  // Reinserimento della marcatura messa da parte.
  return s.replace(MARK_RE, function (_m, n) {
    return HTML[Number(n)];
  });
}

/* ──────────────────────────  CONVERSIONE DEI BLOCCHI  ────────────────────── */

function renderItemize(body, ordered) {
  // Gli \item sono separati da righe vuote nel sorgente: si spezza sul comando.
  const parts = body.split(/\\item\b/).slice(1);
  const lis = parts
    .map(function (p) {
      return inline(p);
    })
    .filter(function (p) {
      return p.length > 0;
    })
    .map(function (p) {
      return "<li>" + p + "</li>";
    })
    .join("");
  const tag = ordered ? "ol" : "ul";
  return "<" + tag + ' class="mu-list">' + lis + "</" + tag + ">";
}

/** Estrae il testo di \caption, se presente. */
function readCaption(body) {
  const m = /\\caption\s*\{/.exec(body);
  if (!m) return null;
  const [cap] = readGroup(body, m.index + m[0].length - 1);
  return cap === null ? null : inline(cap);
}

function renderTable(body, number) {
  const caption = readCaption(body);

  // Si scarta l'intestazione dell'ambiente: specifica delle colonne, didascalia
  // ed etichetta non sono contenuto.
  let content = replaceCommand(body, "caption", 1, function () {
    return "";
  });
  content = replaceCommand(content, "label", 1, function () {
    return "";
  });
  const firstBrace = content.indexOf("{");
  if (firstBrace !== -1 && content.slice(0, firstBrace).trim() === "") {
    const [, after] = readGroup(content, firstBrace);
    content = content.slice(after);
  }

  const rows = content
    .split("\\\\")
    .map(function (r) {
      return r
        .replace(/\\hline/g, "")
        .replace(/\\endfirsthead/g, "")
        .replace(/\\endhead/g, "")
        .trim();
    })
    .filter(function (r) {
      return r.length > 0;
    });

  if (!rows.length) return "";

  // L'intestazione compare due volte, per \endfirsthead e per \endhead.
  if (rows.length > 1 && rows[0] === rows[1]) rows.splice(1, 1);

  const cells = function (row) {
    return row.split("&").map(function (c) {
      return inline(c);
    });
  };
  const head = cells(rows[0]);
  const bodyRows = rows.slice(1).map(cells);

  const thead =
    "<thead><tr>" +
    head
      .map(function (c) {
        return "<th>" + c + "</th>";
      })
      .join("") +
    "</tr></thead>";
  const tbody =
    "<tbody>" +
    bodyRows
      .map(function (r) {
        return (
          "<tr>" +
          r
            .map(function (c) {
              return "<td>" + c + "</td>";
            })
            .join("") +
          "</tr>"
        );
      })
      .join("") +
    "</tbody>";

  const cap = caption
    ? '<figcaption class="mu-caption">Tabella ' + number + ": " + caption + "</figcaption>"
    : "";
  return (
    '<figure class="mu-table-wrap">' +
    cap +
    '<div class="mu-table-scroll"><table class="mu-table">' +
    thead +
    tbody +
    "</table></div></figure>"
  );
}

function renderFigure(body, number) {
  let src = null;
  const gm = /\\includegraphics/.exec(body);
  if (gm) {
    const i = skipOptional(body, gm.index + gm[0].length);
    const [path] = readGroup(body, i);
    if (path) src = ASSET_BASE + path.trim();
  }
  if (!src) return "";

  const caption = readCaption(body);
  const alt = caption ? caption.replace(/<[^>]*>/g, "") : "Figura del manuale";
  const cap = caption
    ? '<figcaption class="mu-caption">Figura ' + number + ": " + caption + "</figcaption>"
    : "";
  return (
    '<figure class="mu-figure"><img src="' +
    escapeHtml(src) +
    '" alt="' +
    escapeHtml(alt) +
    '" loading="lazy">' +
    cap +
    "</figure>"
  );
}

/**
 * Converte il corpo di una sezione, cioe' il testo fra un titolo e il
 * successivo. Riconosce gli ambienti e tratta il resto come paragrafi.
 */
function renderBody(raw, counters) {
  let out = "";
  let i = 0;
  let plain = "";

  const flush = function () {
    const blocks = plain.split(/\n[ \t]*\n/);
    for (const b of blocks) {
      const html = inline(b);
      if (!html) continue;
      // Gli avvisi del manuale iniziano con "Avviso." in grassetto: in pagina
      // diventano un riquadro, che e' cio' che erano gia' nel PDF.
      if (/^<strong>Avviso\.<\/strong>/.test(html)) {
        out += '<aside class="mu-callout">' + html + "</aside>";
      } else {
        out += "<p>" + html + "</p>";
      }
    }
    plain = "";
  };

  while (i < raw.length) {
    const begin = raw.indexOf("\\begin{", i);
    if (begin === -1) {
      plain += raw.slice(i);
      break;
    }
    plain += raw.slice(i, begin);

    const [envName, afterName] = readGroup(raw, begin + "\\begin".length);
    if (!envName) {
      plain += raw.slice(begin, begin + 7);
      i = begin + 7;
      continue;
    }
    const endTag = "\\end{" + envName + "}";
    const endAt = raw.indexOf(endTag, afterName);
    if (endAt === -1) {
      plain += raw.slice(begin);
      break;
    }
    const inner = raw.slice(afterName, endAt);
    flush();

    switch (envName) {
      case "itemize":
        out += renderItemize(inner, false);
        break;
      case "enumerate":
        out += renderItemize(inner, true);
        break;
      case "longtable":
      case "tabularx":
      case "tabular":
        // Solo le tabelle con didascalia sono numerate, come nel PDF.
        if (/\\caption\s*\{/.test(inner)) {
          counters.table += 1;
          out += renderTable(inner, counters.table);
        } else {
          out += renderTable(inner, null);
        }
        break;
      case "figure":
        if (/\\caption\s*\{/.test(inner)) {
          counters.figure += 1;
          out += renderFigure(inner, counters.figure);
        } else {
          out += renderFigure(inner, null);
        }
        break;
      case "comando":
      case "verbatim":
        out +=
          '<pre class="mu-pre">' +
          escapeHtml(inner.replace(/^\n/, "").replace(/\n$/, "")) +
          "</pre>";
        break;
      case "quote":
        out += '<blockquote class="mu-quote">' + inline(inner) + "</blockquote>";
        break;
      default:
        // Ambiente non previsto: se ne conserva il contenuto testuale.
        plain += inner;
        break;
    }
    i = endAt + endTag.length;
  }
  flush();
  return out;
}

/* ────────────────────────────  STRUTTURA E NUMERI  ───────────────────────── */

const LEVELS = { section: 1, subsection: 2, subsubsection: 3 };

/** Individua i titoli e spezza il documento nelle rispettive porzioni. */
function splitSections(body) {
  const re = /\\(subsubsection|subsection|section)\s*\{/g;
  const found = [];
  let m;
  while ((m = re.exec(body)) !== null) {
    const [title, after] = readGroup(body, m.index + m[0].length - 1);
    found.push({
      level: LEVELS[m[1]],
      rawTitle: title ?? "",
      start: m.index,
      contentStart: after,
    });
  }
  return found.map(function (s, idx) {
    const next = found[idx + 1];
    return Object.assign({}, s, {
      content: body.slice(s.contentStart, next ? next.start : body.length),
    });
  });
}

/**
 * Assegna i numeri di sezione, tabella e figura e registra le etichette, cosi'
 * che i \ref possano essere risolti mentre si converte il testo.
 */
function numberEverything(sections) {
  LABELS.clear();
  const counter = [0, 0, 0];
  const running = { table: 0, figure: 0 };

  for (const s of sections) {
    counter[s.level - 1] += 1;
    for (let k = s.level; k < 3; k++) counter[k] = 0;
    s.number = counter.slice(0, s.level).join(".");
    s.id = "sec-" + s.number.replace(/\./g, "-");

    // L'etichetta della sezione sta all'inizio del suo contenuto.
    const lm = /^\s*\\label\s*\{/.exec(s.content);
    if (lm) {
      const [lab] = readGroup(s.content, lm.index + lm[0].length - 1);
      if (lab) LABELS.set(lab, s.number);
    }

    // Tabelle e figure si numerano in ordine di comparsa, come nel PDF.
    const envRe = /\\begin\{(longtable|figure)\}/g;
    let e;
    while ((e = envRe.exec(s.content)) !== null) {
      const kind = e[1] === "figure" ? "figure" : "table";
      const endTag = "\\end{" + e[1] + "}";
      const endAt = s.content.indexOf(endTag, e.index);
      const inner = s.content.slice(e.index, endAt === -1 ? undefined : endAt);
      if (!/\\caption\s*\{/.test(inner)) continue;
      running[kind] += 1;
      const labMatch = /\\label\s*\{/.exec(inner);
      if (labMatch) {
        const [lab] = readGroup(inner, labMatch.index + labMatch[0].length - 1);
        if (lab) LABELS.set(lab, String(running[kind]));
      }
    }
  }
  return sections;
}

/* ──────────────────────────────  RENDERING  ──────────────────────────────── */

let SECTIONS = [];

function buildDocument(tex) {
  const clean = stripComments(tex);
  const firstSection = clean.indexOf("\\section{");
  const endDoc = clean.indexOf("\\end{document}");
  if (firstSection === -1) return [];
  const body = clean.slice(firstSection, endDoc === -1 ? undefined : endDoc);

  const sections = numberEverything(splitSections(body));
  const counters = { table: 0, figure: 0 };

  for (const s of sections) {
    s.title = inline(s.rawTitle);
    const content = s.content.replace(/^\s*\\label\s*\{[^}]*\}/, "");
    s.html = renderBody(content, counters);
    s.plainText = (s.title + " " + s.html.replace(/<[^>]*>/g, " "))
      .replace(/\s+/g, " ")
      .toLowerCase();
  }
  return sections;
}

function stripTags(s) {
  return s.replace(/<[^>]*>/g, "");
}

function renderToc(sections) {
  const toc = document.getElementById("mu-toc");
  if (!toc) return;
  toc.innerHTML = "";
  sections.forEach(function (s) {
    const a = document.createElement("a");
    a.className = "mu-toc-link mu-toc-l" + s.level;
    a.href = "#" + s.id;
    a.textContent = s.number + " " + stripTags(s.title);
    toc.appendChild(a);
  });
}

function renderContent(sections, query) {
  const host = document.getElementById("mu-content");
  if (!host) return;
  host.innerHTML = "";

  const q = (query ?? "").trim().toLowerCase();
  const shown = q
    ? sections.filter(function (s) {
        return s.plainText.includes(q);
      })
    : sections;

  const counter = document.getElementById("mu-result-count");
  if (counter) {
    counter.textContent = q
      ? shown.length + (shown.length === 1 ? " sezione trovata" : " sezioni trovate")
      : "";
  }

  if (!shown.length) {
    host.innerHTML =
      '<p class="glossary-empty">Nessuna sezione corrisponde alla ricerca.</p>';
    return;
  }

  shown.forEach(function (s) {
    const wrap = document.createElement("section");
    wrap.className = "mu-section mu-level-" + s.level;
    wrap.id = s.id;

    const h = document.createElement("h" + Math.min(s.level + 1, 4));
    h.className = "mu-heading";
    h.innerHTML = '<span class="mu-num">' + s.number + "</span> " + s.title;
    wrap.appendChild(h);

    const bodyEl = document.createElement("div");
    bodyEl.className = "mu-body";
    bodyEl.innerHTML = s.html;
    wrap.appendChild(bodyEl);

    host.appendChild(wrap);
  });

  highlightOnScroll();
}

function highlightOnScroll() {
  const links = document.querySelectorAll(".mu-toc-link");
  if (!links.length || !("IntersectionObserver" in window)) return;

  const observer = new IntersectionObserver(
    function (entries) {
      entries.forEach(function (entry) {
        if (!entry.isIntersecting) return;
        document.querySelectorAll(".mu-toc-link.is-current").forEach(function (el) {
          el.classList.remove("is-current");
        });
        const link = document.querySelector(
          '.mu-toc-link[href="#' + entry.target.id + '"]'
        );
        if (link) link.classList.add("is-current");
      });
    },
    { rootMargin: "-80px 0px -70% 0px" }
  );
  document.querySelectorAll(".mu-section").forEach(function (el) {
    observer.observe(el);
  });
}

async function fetchTex() {
  let lastErr = null;
  for (const url of TEX_SOURCES) {
    try {
      const res = await fetch(url, { cache: "no-cache" });
      if (!res.ok) throw new Error("HTTP " + res.status);
      return await res.text();
    } catch (err) {
      lastErr = err;
    }
  }
  throw lastErr ?? new Error("sorgente non raggiungibile");
}

document.addEventListener("DOMContentLoaded", async function () {
  const host = document.getElementById("mu-content");
  const input = document.getElementById("search-input");

  try {
    const tex = await fetchTex();
    SECTIONS = buildDocument(tex);
    if (!SECTIONS.length) throw new Error("nessuna sezione riconosciuta");
    renderToc(SECTIONS);
    renderContent(SECTIONS);
  } catch (err) {
    console.warn("Impossibile costruire la versione web del manuale:", err);
    if (host) {
      host.innerHTML =
        "<p class=\"glossary-empty\">Non e' stato possibile caricare il manuale. " +
        "E' disponibile la <a href=\"../PB/doc_esterna/manuale-utente/manuale-utente.pdf\">versione PDF</a>.</p>";
    }
    return;
  }

  if (input) {
    input.addEventListener("input", function () {
      renderContent(SECTIONS, input.value);
    });
  }
});
