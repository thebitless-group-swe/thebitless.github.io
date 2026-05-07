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
const VERBALE_RE = /^(VE|VI)_(\d{4}-\d{2}-\d{2})_(.+)$/;

let SECTIONS = [];

function humanize(s) {
  const t = s.replace(/[-_]+/g, " ").trim();
  return t.charAt(0).toUpperCase() + t.slice(1);
}

function pickPdf(paths) {
  return paths.find((p) => /_firmato\.pdf$/i.test(p)) || paths[0];
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
    const tipo = m[1] === "VE" ? "esterno" : "interno";
    items.push({
      name: `Verbale ${tipo} ${m[2]} — ${humanize(m[3])}`,
      href: pickPdf(paths),
      _sort: m[2],
    });
  }
  items.sort((a, b) => b._sort.localeCompare(a._sort));
  return items.map(({ _sort, ...r }) => r);
}

function buildDocs(files, prefix, exclude = []) {
  const items = [];
  for (const [folder, paths] of groupByFolder(files, prefix)) {
    if (exclude.includes(folder)) continue;
    items.push({ name: humanize(folder), href: pickPdf(paths) });
  }
  return items.sort((a, b) => a.name.localeCompare(b.name, "it"));
}

async function loadSections() {
  try {
    const res = await fetch(`https://api.github.com/repos/${REPO}/git/trees/main?recursive=1`);
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    const data = await res.json();
    const pdfs = data.tree
      .filter((e) => e.type === "blob" && e.path.toLowerCase().endsWith(".pdf"))
      .map((e) => e.path);
    return [
      {
        id: "candidatura",
        docs: buildDocs(pdfs, "candidatura", ["verbali"]),
        verbaliEsterni: buildVerbali(pdfs, "candidatura/verbali/verbali_esterni"),
        verbaliInterni: buildVerbali(pdfs, "candidatura/verbali/verbali_interni"),
      },
      {
        id: "rtb",
        docs: [
          ...buildDocs(pdfs, "RTB/doc_esterna", ["verbali"]),
          ...buildDocs(pdfs, "RTB/doc_interna", ["verbali"]),
        ],
        verbaliEsterni: buildVerbali(pdfs, "RTB/doc_esterna/verbali"),
        verbaliInterni: buildVerbali(pdfs, "RTB/doc_interna/verbali"),
      },
      {
        id: "diapositive",
        docs: buildDocs(pdfs, "diapositive"),
      },
    ];
  } catch (err) {
    console.warn("Impossibile recuperare la lista documenti:", err);
    return [
      { id: "candidatura", docs: [], verbaliEsterni: [], verbaliInterni: [] },
      { id: "rtb", docs: [], verbaliEsterni: [], verbaliInterni: [] },
      { id: "diapositive", docs: [] },
    ];
  }
}

function makeDocList(docs) {
  if (docs.length === 0) return null;
  const ul = document.createElement("ul");
  ul.className = "doc-list";
  docs.forEach(({ name, href }, i) => {
    const li = document.createElement("li");
    const a = document.createElement("a");
    a.href = href;
    a.className = "doc-link";
    if (href !== "#") { a.target = "_blank"; a.rel = "noopener"; }
    a.textContent = name;
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

function renderDocs() {
  SECTIONS.forEach((section) => {
    const el = document.getElementById(section.id);
    if (!el) return;
    const body = el.querySelector(".section-body");
    if (!body) return;

    body.innerHTML = "";

    if ("verbaliEsterni" in section) {
      if (section.docs?.length) {
        body.appendChild(makeSubSection("Documenti", section.docs));
      }
      body.appendChild(makeSubSection("Verbali Esterni", section.verbaliEsterni));
      body.appendChild(makeSubSection("Verbali Interni", section.verbaliInterni));
    } else {
      const docs = section.docs ?? [];
      if (docs.length === 0) {
        const empty = document.createElement("p");
        empty.className = "doc-empty";
        empty.textContent = "Nessun documento presente.";
        body.appendChild(empty);
      } else {
        body.appendChild(makeDocList(docs));
      }
    }
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

  document.getElementById("theme-toggle")?.addEventListener("click", () => {
    const current = document.documentElement.getAttribute("data-theme");
    applyTheme(current === "dark" ? "light" : "dark");
  });

  SECTIONS = await loadSections();
  renderDocs();
});
