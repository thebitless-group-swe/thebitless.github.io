const MEMBERS = [
  { firstName: "Simone",  lastName: "Zecchinato", avatar: "https://avatars.githubusercontent.com/u/105296270?v=4", github: "https://github.com/zcchnt" },
  { firstName: "Edoardo", lastName: "De Piccoli", avatar: "https://avatars.githubusercontent.com/u/103844232?v=4", github: "https://github.com/edoardodepiccoli" },
  { firstName: "Anna",    lastName: "Marini",     avatar: "https://avatars.githubusercontent.com/u/225196899?v=4", github: "https://github.com/annamarinii" },
  { firstName: "Samuele", lastName: "Vendramin",  avatar: "https://avatars.githubusercontent.com/u/192120628?v=4", github: "https://github.com/SamueleVendra" },
  { firstName: "Lorenzo", lastName: "Battistella",avatar: "https://avatars.githubusercontent.com/u/242595604?v=4", github: "https://github.com/lorenzo-battistella" },
  { firstName: "Andrea",  lastName: "Menegaldo",  avatar: "https://avatars.githubusercontent.com/u/249091043?v=4", github: "https://github.com/andreamenenegaldo" },
  { firstName: "Davide",  lastName: "Facco",       avatar: "https://avatars.githubusercontent.com/u/50549691?v=4",   github: "https://github.com/faccuzz" },
];

const SECTIONS = [
  {
    id: "candidatura",
    docs: [
      { name: "Lettera di presentazione",    href: "../candidatura/lettera-di-presentazione/lettera-di-presentazione.pdf" },
      { name: "Dichiarazione degli impegni", href: "../candidatura/dichiarazione-degli-impegni/dichiarazione-degli-impegni.pdf" },
      { name: "Analisi dei capitolati",      href: "../candidatura/analisi-dei-capitolati/analisi-dei-capitolati.pdf" },
    ],
    verbaliEsterni: [
      { name: "Verbale esterno 2026-03-12 — Chiamata Conoscitiva Zucchetti", href: "../candidatura/verbali/verbali_esterni/VE_2026-03-12_Zucchetti/VE_2026-03-12_Zucchetti.pdf" },
      { name: "Verbale esterno 2026-03-16 — Chiamata Conoscitiva Miriade",   href: "../candidatura/verbali/verbali_esterni/VE_2026-03-16_Miriade/VE_2026-03-6_Miriade.pdf" },
      { name: "Verbale esterno 2026-03-18 — Chiamata Conoscitiva Eggon",     href: "../candidatura/verbali/verbali_esterni/VE_2026-03-18_Eggon/VE_2026-03-18_Eggon.pdf" },
    ],
    verbaliInterni: [
      { name: "Verbale interno 2026-03-10 — Avvio Progetto",          href: "../candidatura/verbali/verbali_interni/VI_2026-03-10_avvio-progetto/VI_2026_03_10_primo_incontro.pdf" },
      { name: "Verbale interno 2026-03-18 — Discussione Capitolati",  href: "../candidatura/verbali/verbali_interni/VI_2026-03-18_discussione-capitolati/VI_2026-03-18_discussione-capitolati.pdf" },
      { name: "Verbale interno 2026-03-20 — Dichiarazione Impegni",   href: "../candidatura/verbali/verbali_interni/VI_2026-03-20_dichiarazione-impegni/VI_2026-03-20_dichiarazione-impegni.pdf" },
    ],
  },
  {
    id: "rtb",
    verbaliEsterni: [],
    verbaliInterni: [],
  },
  {
    id: "diapositive",
    docs: [],
  },
];

function makeDocList(docs) {
  if (docs.length === 0) return null;
  const ul = document.createElement("ul");
  ul.className = "doc-list";
  docs.forEach(({ name, href }, i) => {
    const li = document.createElement("li");
    li.style.setProperty("--i", i);
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

function animateEntrance() {
  const logo = document.querySelector(".logo-wrap");
  if (logo) logo.classList.add("anim-pop");

  document.querySelectorAll(".section").forEach((el, i) => {
    el.style.setProperty("--i", i);
    el.classList.add("anim-slide-up");
  });

  const footer = document.querySelector("footer");
  if (footer) footer.classList.add("anim-fade");
}

document.addEventListener("DOMContentLoaded", () => {
  initTheme();
  renderDocs();
  renderTeam();
  animateEntrance();

  document.getElementById("theme-toggle")?.addEventListener("click", () => {
    const current = document.documentElement.getAttribute("data-theme");
    applyTheme(current === "dark" ? "light" : "dark");
  });
});
