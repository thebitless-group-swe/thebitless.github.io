const GLOSSARIO = [
  {
    term: "Analisi dei Requisiti",
    desc: "Attività che identifica, documenta e classifica i requisiti funzionali e non funzionali del sistema da sviluppare, definendo cosa il software deve fare.",
  },
  {
    term: "Attore",
    desc: "Entità esterna (utente, sistema o ruolo) che interagisce con il sistema nei casi d'uso, stimolando o ricevendo funzionalità dal sistema.",
  },
  {
    term: "Backlog",
    desc: "Lista ordinata per priorità di funzionalità, miglioramenti, bug fix e requisiti tecnici che il team deve sviluppare nel corso del progetto.",
  },
  {
    term: "Baseline",
    desc: "Punto di riferimento documentato e formalmente approvato che costituisce la base condivisa per le successive modifiche e decisioni del progetto.",
  },
  {
    term: "Bug",
    desc: "Errore nel codice sorgente o nella logica di un programma che causa un comportamento inatteso o scorretto del software.",
  },
  {
    term: "Capitolato",
    desc: "Documento redatto dal proponente che descrive il problema da risolvere, le funzionalità attese, i vincoli tecnologici e i criteri di valutazione del progetto.",
  },
  {
    term: "Caso d'Uso",
    desc: "Descrizione delle interazioni tra uno o più attori e il sistema per raggiungere un obiettivo specifico, tipicamente rappresentata con diagrammi UML.",
  },
  {
    term: "Commit",
    desc: "Operazione che salva in modo permanente un insieme di modifiche al codice sorgente nel sistema di versionamento, associandole a un messaggio descrittivo.",
  },
  {
    term: "Consuntivo",
    desc: "Resoconto a posteriori delle ore e dei costi effettivamente sostenuti in un periodo, confrontato con le stime del preventivo corrispondente.",
  },
  {
    term: "Deploy",
    desc: "Processo di rilascio, installazione e messa in esercizio di un software in un ambiente operativo (sviluppo, staging o produzione).",
  },
  {
    term: "Design Pattern",
    desc: "Soluzione progettuale riutilizzabile e collaudata a un problema ricorrente nel design del software, catalogata con un nome, un contesto e una struttura standard.",
  },
  {
    term: "Diagramma delle Classi",
    desc: "Diagramma UML che mostra le classi del sistema, i loro attributi, i metodi e le relazioni (associazione, ereditarietà, composizione) tra di esse.",
  },
  {
    term: "Diagramma di Sequenza",
    desc: "Diagramma UML che rappresenta l'ordine temporale dei messaggi scambiati tra gli oggetti del sistema per realizzare uno scenario specifico.",
  },
  {
    term: "Diagramma UML",
    desc: "Rappresentazione grafica standardizzata (Unified Modeling Language) usata per modellare strutture e comportamenti di sistemi software.",
  },
  {
    term: "Documentazione",
    desc: "Insieme dei documenti che descrivono un sistema software, le sue funzionalità, l'architettura, le norme di sviluppo e le istruzioni per utenti e sviluppatori.",
  },
  {
    term: "Fornitore",
    desc: "Soggetto (singolo o team) che sviluppa, verifica e consegna il prodotto software richiesto dal proponente, rispettando i requisiti concordati.",
  },
  {
    term: "Framework",
    desc: "Struttura software riutilizzabile che fornisce funzionalità, convenzioni e librerie di base su cui sviluppare applicazioni, riducendo il codice boilerplate.",
  },
  {
    term: "Gantt",
    desc: "Diagramma a barre che visualizza la pianificazione temporale delle attività di un progetto, mostrando durata, sequenza e dipendenze tra i task.",
  },
  {
    term: "Git",
    desc: "Sistema di controllo di versione distribuito che traccia le modifiche al codice sorgente, permettendo la collaborazione parallela e il ripristino di versioni precedenti.",
  },
  {
    term: "GitHub",
    desc: "Piattaforma web che ospita repository Git remoti e offre strumenti per la collaborazione: pull request, issue tracking, code review e GitHub Actions.",
  },
  {
    term: "Glossario",
    desc: "Documento che raccoglie e definisce in modo univoco i termini tecnici e specialistici usati nel progetto, riducendo ambiguità e incomprensioni.",
  },
  {
    term: "Issue",
    desc: "Segnalazione tracciata in un sistema di project management che rappresenta un bug, una richiesta di funzionalità o un'attività da svolgere.",
  },
  {
    term: "LaTeX",
    desc: "Sistema di composizione tipografica usato per produrre documenti tecnici e scientifici di alta qualità, con gestione automatica di formule, riferimenti e indici.",
  },
  {
    term: "Milestone",
    desc: "Traguardo significativo all'interno del progetto che segna il completamento di una fase o il raggiungimento di un obiettivo rilevante per gli stakeholder.",
  },
  {
    term: "Norme di Progetto",
    desc: "Documento che definisce le regole, le convenzioni, gli strumenti e le procedure adottate dal team per organizzare e standardizzare il lavoro di sviluppo.",
  },
  {
    term: "Piano di Progetto",
    desc: "Documento che descrive la pianificazione delle attività, la stima dei costi, l'allocazione delle risorse e il calendario di avanzamento del progetto.",
  },
  {
    term: "Piano di Qualifica",
    desc: "Documento che definisce le strategie, i criteri di accettazione e le procedure per verificare e garantire la qualità del prodotto software.",
  },
  {
    term: "Preventivo",
    desc: "Stima a priori delle ore e dei costi previsti per un periodo o per l'intero progetto, usata come riferimento per il consuntivo.",
  },
  {
    term: "Proponente",
    desc: "Azienda o organizzazione che propone il capitolato, definisce i requisiti del progetto e valuta il prodotto finale consegnato dal fornitore.",
  },
  {
    term: "Pull Request",
    desc: "Richiesta formale di integrazione delle modifiche di un branch verso un altro, che innesca un processo di code review prima della fusione.",
  },
  {
    term: "Refactoring",
    desc: "Processo di ristrutturazione del codice esistente per migliorarne leggibilità, manutenibilità o performance senza alterarne il comportamento esterno.",
  },
  {
    term: "Repository",
    desc: "Archivio centralizzato o distribuito che contiene il codice sorgente, la cronologia delle modifiche e la configurazione di un progetto software.",
  },
  {
    term: "Requisito Funzionale",
    desc: "Specifica che descrive un comportamento o una funzionalità che il sistema deve fornire in risposta a determinati input o in determinate condizioni.",
  },
  {
    term: "Requisito Non Funzionale",
    desc: "Specifica che descrive le qualità del sistema (prestazioni, sicurezza, usabilità, affidabilità) senza descrivere funzionalità specifiche.",
  },
  {
    term: "Retrospettiva",
    desc: "Riunione del team al termine di uno sprint per riflettere su cosa ha funzionato, cosa migliorare e definire azioni concrete per il periodo successivo.",
  },
  {
    term: "RTB",
    desc: "Requirements and Technology Baseline: revisione formale che certifica la solidità dei requisiti analizzati e delle tecnologie scelte per realizzare il progetto.",
  },
  {
    term: "Scrum",
    desc: "Framework agile per la gestione dello sviluppo software che organizza il lavoro in sprint, con ruoli definiti (Product Owner, Scrum Master, Development Team).",
  },
  {
    term: "Specifica Tecnica",
    desc: "Documento che descrive l'architettura del sistema, le scelte tecnologiche, i design pattern adottati e le interfacce tra i componenti.",
  },
  {
    term: "Sprint",
    desc: "Iterazione a durata fissa (tipicamente 1-4 settimane) al termine della quale il team produce un incremento del prodotto potenzialmente rilasciabile.",
  },
  {
    term: "Stakeholder",
    desc: "Tutti i soggetti che hanno un interesse diretto o indiretto nel progetto: committenti, utenti finali, sviluppatori, responsabili e fornitori.",
  },
  {
    term: "Test di Accettazione",
    desc: "Verifica formale che il software soddisfi i requisiti concordati con il committente e sia pronto per il rilascio in produzione.",
  },
  {
    term: "Test di Integrazione",
    desc: "Verifica che i diversi moduli o componenti del sistema interagiscano correttamente una volta combinati tra loro.",
  },
  {
    term: "Test di Unità",
    desc: "Verifica del corretto funzionamento di singole unità di codice (funzioni, classi, metodi) in isolamento rispetto al resto del sistema.",
  },
  {
    term: "UML",
    desc: "Unified Modeling Language: linguaggio di modellazione grafico standardizzato per specificare, visualizzare e documentare sistemi software orientati agli oggetti.",
  },
  {
    term: "Verbale",
    desc: "Documento che riporta i partecipanti, i punti discussi, le decisioni prese e le azioni da intraprendere in seguito a una riunione interna o esterna.",
  },
  {
    term: "Versionamento",
    desc: "Gestione e tracciamento sistematico delle diverse versioni di un documento o di un artefatto software nel tempo, attraverso un sistema di controllo di versione.",
  },
  {
    term: "Way of Working",
    desc: "Insieme delle norme, degli strumenti, dei ruoli e delle pratiche operative adottate dal team per organizzare, eseguire e verificare il proprio lavoro.",
  },
];

function renderGlossario(filter) {
  const grid = document.getElementById("glossary-grid");
  if (!grid) return;

  const q = (filter ?? "").trim().toLowerCase();
  const items = q
    ? GLOSSARIO.filter(
        ({ term, desc }) =>
          term.toLowerCase().includes(q) || desc.toLowerCase().includes(q)
      )
    : GLOSSARIO;

  grid.innerHTML = "";

  if (items.length === 0) {
    const empty = document.createElement("p");
    empty.className = "glossary-empty";
    empty.textContent = "Nessun termine trovato.";
    grid.appendChild(empty);
    return;
  }

  let currentLetter = null;
  items.forEach(({ term, desc }) => {
    const letter = term[0].toUpperCase();
    if (letter !== currentLetter) {
      currentLetter = letter;
      const divider = document.createElement("div");
      divider.className = "glossary-divider";
      divider.textContent = letter;
      grid.appendChild(divider);
    }

    const card = document.createElement("div");
    card.className = "glossary-card";

    const title = document.createElement("p");
    title.className = "card-term";
    title.textContent = term;

    const body = document.createElement("p");
    body.className = "card-desc";
    body.textContent = desc;

    card.appendChild(title);
    card.appendChild(body);
    grid.appendChild(card);
  });
}

document.addEventListener("DOMContentLoaded", () => {
  renderGlossario();

  const input = document.getElementById("search-input");
  if (input) {
    input.addEventListener("input", () => renderGlossario(input.value));
  }
});
