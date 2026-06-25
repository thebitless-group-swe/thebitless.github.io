const MEMBERS = [
  { firstName: "Simone",  lastName: "Zecchinato", avatar: "https://avatars.githubusercontent.com/u/105296270?v=4", github: "https://github.com/zcchnt" },
  { firstName: "Edoardo", lastName: "De Piccoli", avatar: "https://avatars.githubusercontent.com/u/103844232?v=4", github: "https://github.com/edoardodepiccoli" },
  { firstName: "Anna",    lastName: "Marini",     avatar: "https://avatars.githubusercontent.com/u/225196899?v=4", github: "https://github.com/annamarinii" },
  { firstName: "Samuele", lastName: "Vendramin",  avatar: "https://avatars.githubusercontent.com/u/192120628?v=4", github: "https://github.com/SamueleVendra" },
  { firstName: "Lorenzo", lastName: "Battistella",avatar: "https://avatars.githubusercontent.com/u/242595604?v=4", github: "https://github.com/lorenzo-battistella" },
  { firstName: "Andrea",  lastName: "Menegaldo",  avatar: "https://avatars.githubusercontent.com/u/249091043?v=4", github: "https://github.com/andreamenenegaldo" },
  { firstName: "Davide",  lastName: "Facco",       avatar: "https://avatars.githubusercontent.com/u/50549691?v=4",   github: "https://github.com/faccuzz" },
];

const REPO = "thebitless-group-swe/thebitless.github.io";
const RAW_BASE = `https://raw.githubusercontent.com/${REPO}/main/`;
const POC_URL = "https://github.com/thebitless-group-swe/PoC";
const REPO_URL = `https://github.com/${REPO}`;
const VERBALE_RE = /^(VE|VI|V)_(\d{4}-\d{2}-\d{2})_(.+)$/;
const DIARIO_RE = /^DB-?(\d+)?_?(\d{4}-\d{2}-\d{2})/;

let PHASES = [];
let ACTIVE_PHASE = "rtb";
// Lettera di presentazione: percorso relativo sul sito (GitHub Pages serve il PDF con
// content-type corretto, così si apre nel browser invece di scaricarsi come fa raw.githubusercontent).
const LETTERA_PATH = "RTB/lettera-di-presentazione/lettera-di-presentazione.pdf";

function humanize(s) {
  const t = s.replace(/[-_]+/g, " ").trim();
  return t.charAt(0).toUpperCase() + t.slice(1);
}

function pickPdf(paths, mainName) {
  return (
    paths.find((p) => /_firmato\.pdf$/i.test(p)) ||
    (mainName && paths.find((p) => p.endsWith(`/${mainName}.pdf`))) ||
    paths[0]
  );
}

function rawUrl(path) {
  return RAW_BASE + path.split("/").map(encodeURIComponent).join("/");
}

// Cerca il sorgente .tex principale di una cartella documento.
function findTex(texPaths, folderPath) {
  const inFolder = texPaths.filter((p) => p.startsWith(folderPath + "/"));
  const base = folderPath.split("/").pop();
  return inFolder.find((p) => p.endsWith(`/${base}.tex`)) || inFolder[0] || null;
}

function groupByFolder(files, prefix) {
  const groups = new Map();
  for (const p of files) {
    if (!p.startsWith(prefix + "/")) continue;
    const parts = p.slice(prefix.length + 1).split("/");
    if (parts.length < 2) continue;
    const folder = parts[0];
    if (!groups.has(folder)) groups.set(folder, []);
    groups.get(folder).push(p);
  }
  return groups;
}

function buildVerbali(files, prefix) {
  const items = [];
  for (const [folder, paths] of groupByFolder(files, prefix)) {
    const m = folder.match(VERBALE_RE);
    if (!m) continue;
    items.push({
      name: `${m[2]} — ${humanize(m[3])}`,
      href: pickPdf(paths),
      _sort: m[2],
    });
  }
  // Ordine LIFO: i verbali più recenti compaiono per primi.
  items.sort((a, b) => b._sort.localeCompare(a._sort));
  return items.map(({ _sort, ...r }) => r);
}

function buildDocs(pdfs, texPaths, prefix, exclude = [], pinFirst = []) {
  const items = [];
  for (const [folder, paths] of groupByFolder(pdfs, prefix)) {
    if (exclude.includes(folder)) continue;
    items.push({
      name: humanize(folder),
      href: pickPdf(paths, folder),
      texPath: findTex(texPaths, `${prefix}/${folder}`),
      _folder: folder,
    });
  }
  items.sort((a, b) => a.name.localeCompare(b.name, "it"));
  // Porta in cima i documenti indicati (es. la lettera di presentazione che introduce tutto).
  pinFirst
    .slice()
    .reverse()
    .forEach((f) => {
      const i = items.findIndex((it) => it._folder === f);
      if (i > 0) items.unshift(items.splice(i, 1)[0]);
    });
  return items.map(({ _folder, ...r }) => r);
}

// Diari di bordo: file DB-N_YYYY-MM-DD.pdf direttamente dentro una cartella.
function buildDiari(pdfs, prefix) {
  const items = [];
  for (const p of pdfs) {
    if (!p.startsWith(prefix + "/")) continue;
    const file = p.slice(prefix.length + 1);
    if (file.includes("/")) continue; // solo file diretti, niente sottocartelle
    const m = file.match(DIARIO_RE);
    const date = m ? m[2] : "";
    const num = m && m[1] ? parseInt(m[1], 10) : 0;
    const label =
      m && m[1]
        ? `Diario di Bordo ${m[1]} — ${date}`
        : file.replace(/\.pdf$/i, "").replace(/_/g, " ");
    items.push({ name: label, href: p, _sort: date || file, _num: num });
  }
  // Ordine LIFO: i diari più recenti per primi; a parità di data, numero più alto prima.
  items.sort((a, b) => b._sort.localeCompare(a._sort) || b._num - a._num);
  return items.map(({ _sort, _num, ...r }) => r);
}

// Voce speciale: il PoC è un repository esterno, non un PDF della repo.
const POC_DOC = { name: "Proof of Concept (PoC)", href: POC_URL, external: true };

function buildPhases(pdfs, texPaths) {
  return [
    {
      id: "rtb",
      label: "RTB",
      groups: [
        {
          label: "Documentazione esterna",
          docs: [...buildDocs(pdfs, texPaths, "RTB/doc_esterna", ["verbali"]), POC_DOC],
          verbali: { label: "Verbali esterni", items: buildVerbali(pdfs, "RTB/doc_esterna/verbali") },
        },
        {
          label: "Documentazione interna",
          docs: buildDocs(pdfs, texPaths, "RTB/doc_interna", ["verbali"]),
          verbali: { label: "Verbali interni", items: buildVerbali(pdfs, "RTB/doc_interna/verbali") },
        },
      ],
    },
    {
      id: "candidatura",
      label: "Candidatura",
      groups: [
        {
          label: "Documentazione esterna",
          docs: buildDocs(pdfs, texPaths, "candidatura", ["verbali"], ["lettera-di-presentazione"]),
          verbali: { label: "Verbali esterni", items: buildVerbali(pdfs, "candidatura/verbali/verbali_esterni") },
        },
        {
          label: "Documentazione interna",
          docs: [],
          verbali: { label: "Verbali interni", items: buildVerbali(pdfs, "candidatura/verbali/verbali_interni") },
        },
      ],
    },
    {
      id: "diari",
      label: "Diapositive",
      docs: buildDiari(pdfs, "diapositive"),
    },
  ];
}

function emptyPhases() {
  return [
    { id: "rtb", label: "RTB", groups: [] },
    { id: "candidatura", label: "Candidatura", groups: [] },
    { id: "diari", label: "Diapositive", docs: [] },
  ];
}

async function loadPhases() {
  try {
    const res = await fetch(`https://api.github.com/repos/${REPO}/git/trees/main?recursive=1`);
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    const data = await res.json();
    const blobs = data.tree.filter((e) => e.type === "blob");
    const pdfs = blobs.filter((e) => e.path.toLowerCase().endsWith(".pdf")).map((e) => e.path);
    const texPaths = blobs.filter((e) => e.path.toLowerCase().endsWith(".tex")).map((e) => e.path);
    return buildPhases(pdfs, texPaths);
  } catch (err) {
    console.warn("Impossibile recuperare la lista documenti:", err);
    return emptyPhases();
  }
}

// Scarica e applica le versioni leggendole dai sorgenti .tex (best-effort).
async function loadVersions(phases) {
  const docs = [];
  phases.forEach((p) =>
    (p.groups ?? []).forEach((g) => (g.docs ?? []).forEach((d) => {
      if (d.texPath) docs.push(d);
    }))
  );
  await Promise.all(
    docs.map(async (d) => {
      try {
        const res = await fetch(rawUrl(d.texPath), { cache: "no-cache" });
        if (!res.ok) return;
        const tex = await res.text();
        const m = tex.match(/\\newcommand\s*\{\\versione\}\s*\{([^}]*)\}/);
        if (m) d.version = m[1].trim();
      } catch (_) {
        /* versione non disponibile: si ignora */
      }
    })
  );
}

function makeDocList(docs) {
  if (docs.length === 0) return null;
  const ul = document.createElement("ul");
  ul.className = "doc-list";
  docs.forEach(({ name, href, version, external }) => {
    const li = document.createElement("li");
    const a = document.createElement("a");
    a.href = href;
    a.className = external ? "doc-link doc-link--external" : "doc-link";
    if (href !== "#") {
      a.target = "_blank";
      a.rel = "noopener";
    }

    const label = document.createElement("span");
    label.className = "doc-name";
    label.textContent = name;
    a.appendChild(label);

    if (version) {
      const badge = document.createElement("span");
      badge.className = "doc-version";
      badge.textContent = `v${version}`;
      a.appendChild(badge);
    }

    li.appendChild(a);
    ul.appendChild(li);
  });
  return ul;
}

function makeSubSection(label, docs) {
  const wrap = document.createElement("div");
  wrap.className = "subsection";

  const h = document.createElement("p");
  h.className = "subsection-label";
  h.textContent = label;
  wrap.appendChild(h);

  const list = makeDocList(docs);
  if (list) {
    wrap.appendChild(list);
  } else {
    const empty = document.createElement("p");
    empty.className = "doc-empty";
    empty.textContent = "Nessun documento presente.";
    wrap.appendChild(empty);
  }
  return wrap;
}

function makeGroup(group) {
  const details = document.createElement("details");
  details.className = "group";
  details.open = true;

  const summary = document.createElement("summary");
  summary.className = "group-head";

  const title = document.createElement("span");
  title.className = "group-title";
  title.textContent = group.label;

  const chevron = document.createElement("span");
  chevron.className = "chevron-sm";
  chevron.setAttribute("aria-hidden", "true");
  chevron.textContent = "+";

  summary.appendChild(title);
  summary.appendChild(chevron);
  details.appendChild(summary);

  const inner = document.createElement("div");
  inner.className = "group-body";

  inner.appendChild(makeSubSection("Documenti", group.docs ?? []));
  if (group.verbali) {
    inner.appendChild(makeSubSection(group.verbali.label, group.verbali.items ?? []));
  }

  details.appendChild(inner);
  return details;
}

// Lettera di presentazione fuori dai documenti, visibile solo nella fase RTB.
function renderLetteraBanner() {
  const banner = document.getElementById("lettera-banner");
  if (!banner) return;
  banner.innerHTML = "";
  if (ACTIVE_PHASE !== "rtb") {
    banner.hidden = true;
    return;
  }
  const a = document.createElement("a");
  a.href = LETTERA_PATH;
  a.className = "doc-link lettera-link";
  a.target = "_blank";
  a.rel = "noopener";

  const label = document.createElement("span");
  label.className = "doc-name";
  label.textContent = "Lettera di presentazione";

  a.appendChild(label);
  banner.appendChild(a);
  banner.hidden = false;
}

function renderActivePhase() {
  renderLetteraBanner();
  const panel = document.getElementById("phase-panel");
  if (!panel) return;
  const phase = PHASES.find((p) => p.id === ACTIVE_PHASE);
  panel.innerHTML = "";
  if (!phase) return;

  if (phase.groups) {
    phase.groups.forEach((group) => panel.appendChild(makeGroup(group)));
  } else if (phase.docs) {
    const list = makeDocList(phase.docs);
    if (list) {
      panel.appendChild(list);
    } else {
      const empty = document.createElement("p");
      empty.className = "doc-empty";
      empty.textContent = "Nessun documento presente.";
      panel.appendChild(empty);
    }
  }
}

function setActivePhase(id) {
  ACTIVE_PHASE = id;
  document.querySelectorAll(".phase-tab").forEach((tab) => {
    const on = tab.dataset.phase === id;
    tab.classList.toggle("is-active", on);
    tab.setAttribute("aria-selected", on ? "true" : "false");
    tab.tabIndex = on ? 0 : -1;
  });
  renderActivePhase();
}

// Sulla pagina con il pannello (index) cambia fase in loco; altrove (glossario)
// porta alla home aprendo direttamente la fase scelta.
function activateOrNavigate(id) {
  if (document.getElementById("phase-panel")) {
    setActivePhase(id);
  } else {
    const home = document.querySelector(".phases")?.dataset.home || "index.html";
    window.location.href = `${home}#${id}`;
  }
}

function initTabs() {
  const tabs = Array.from(document.querySelectorAll(".phase-tab"));
  tabs.forEach((tab, i) => {
    tab.addEventListener("click", () => activateOrNavigate(tab.dataset.phase));
    // Navigazione da tastiera tra i tab (frecce sinistra/destra).
    tab.addEventListener("keydown", (e) => {
      if (e.key !== "ArrowRight" && e.key !== "ArrowLeft") return;
      e.preventDefault();
      const dir = e.key === "ArrowRight" ? 1 : -1;
      const next = tabs[(i + dir + tabs.length) % tabs.length];
      next.focus();
      if (document.getElementById("phase-panel")) setActivePhase(next.dataset.phase);
    });
  });
}

function renderTeam() {
  const grid = document.getElementById("team-grid");
  if (!grid) return;
  grid.innerHTML = "";

  MEMBERS.forEach(({ firstName, lastName, avatar, github }) => {
    const member = document.createElement("div");
    member.className = "member";

    const av = document.createElement("div");
    av.className = "avatar";

    if (avatar) {
      const img = document.createElement("img");
      img.src = avatar;
      img.alt = `${firstName} ${lastName}`;
      img.loading = "lazy";
      av.appendChild(img);
    } else {
      av.textContent = (firstName[0] + lastName[0]).toUpperCase();
    }

    const name = document.createElement("span");
    name.className = "member-name";
    name.textContent = `${firstName} ${lastName}`;

    if (github) {
      const link = document.createElement("a");
      link.href = github;
      link.className = "member-link";
      link.target = "_blank";
      link.rel = "noopener";
      link.setAttribute("aria-label", `Profilo GitHub di ${firstName} ${lastName}`);
      link.appendChild(av);
      link.appendChild(name);
      member.appendChild(link);
    } else {
      member.appendChild(av);
      member.appendChild(name);
    }

    grid.appendChild(member);
  });
}

function applyTheme(theme) {
  document.documentElement.setAttribute("data-theme", theme);
  localStorage.setItem("theme", theme);
  const btn = document.getElementById("theme-toggle");
  if (btn) btn.setAttribute("aria-label", theme === "dark" ? "Passa alla modalità chiara" : "Passa alla modalità scura");
}

function initTheme() {
  const saved = localStorage.getItem("theme");
  const prefersDark = window.matchMedia("(prefers-color-scheme: dark)").matches;
  applyTheme(saved ?? (prefersDark ? "dark" : "light"));
}

document.addEventListener("DOMContentLoaded", async () => {
  initTheme();
  renderTeam();
  initTabs();

  document.getElementById("theme-toggle")?.addEventListener("click", () => {
    const current = document.documentElement.getAttribute("data-theme");
    applyTheme(current === "dark" ? "light" : "dark");
  });

  // Le fasi servono solo sulla pagina con il pannello documenti (index).
  if (!document.getElementById("phase-panel")) return;

  PHASES = await loadPhases();

  // Se si arriva dal glossario con #rtb / #candidatura / #diari, apri quella fase.
  const fromHash = location.hash.replace("#", "");
  if (PHASES.some((p) => p.id === fromHash)) {
    setActivePhase(fromHash);
  } else {
    renderActivePhase();
  }

  // Le versioni arrivano dopo (lettura dei .tex): si ri-renderizza all'arrivo.
  await loadVersions(PHASES);
  renderActivePhase();
});
