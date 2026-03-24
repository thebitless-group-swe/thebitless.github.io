# Convenzioni di Naming

## Branch

### Schema

```
[tipo]/[descrizione-breve]
```

### Tipi ammessi

| Tipo | Quando usarlo |
| --- | --- |
| `feat/` | Nuova funzionalità |
| `fix/` | Correzione di un bug |
| `docs/` | Modifiche solo alla documentazione |
| `refactor/` | Riscrittura di codice senza cambiare comportamento |
| `test/` | Aggiunta o modifica di test |
| `chore/` | Manutenzione, aggiornamento dipendenze, configurazione |

### Esempi

```
feat/markdown-editor
feat/llm-api-integration
fix/render-encoding-bug
docs/aggiornamento-analisi-requisiti
refactor/prompt-service
test/unit-editor-component
chore/aggiornamento-dipendenze
```

### Regole

- Tutto **minuscolo**
- Parole separate da **trattino** (`-`)
- Niente numeri di issue senza contesto (`fix/123`) — la descrizione deve essere leggibile
- I branch **non si creano mai su `main` direttamente** — tutto passa da Pull Request
- Dopo il merge, il branch viene **eliminato**

### Branch permanenti

```
main   ← codice stabile, solo da PR approvate
```

---

## Commit

### Schema (Conventional Commits)

```
[tipo]([scope opzionale]): [descrizione breve in minuscolo]
```

### Tipi ammessi

| Tipo | Quando usarlo |
| --- | --- |
| `feat` | Aggiunta di una nuova funzionalità |
| `fix` | Correzione di un bug |
| `docs` | Modifiche solo alla documentazione |
| `refactor` | Riscrittura senza cambiare comportamento esterno |
| `test` | Aggiunta o modifica di test |
| `chore` | Manutenzione, configurazione, dipendenze |
| `style` | Formattazione, spazi, punto e virgola — nessuna logica |

Lo **scope** (opzionale) identifica il modulo o la sezione toccata dal commit.

### Esempi corretti

```
feat(editor): aggiunge rendering markdown in tempo reale
feat(llm): integra chiamata api openai-compatible
fix(editor): corregge encoding utf-8 nel salvataggio file
docs(readme): aggiunge istruzioni di setup locale
refactor(prompt): separa logica prompt in servizio dedicato
test(editor): aggiunge test unitari per il parser markdown
chore: aggiorna dipendenza marked a v14
style(editor): uniforma indentazione componente principale
```

Per la repo documentazione, lo scope indica il documento:

```
docs(sdf): aggiunge analisi capitolato c2
docs(preventivo): corregge calcolo costo progettista
docs(verbali): aggiunge verbale esterno zucchetti 2026-03-12
chore: aggiorna struttura cartelle candidatura
```

### Esempi sbagliati

```
fix cose
aggiornamento
WIP
fix bug
modifiche varie
feat: Aggiunge Editor Markdown
```

### Regole

- La descrizione è in **minuscolo**, al **presente indicativo** (`aggiunge`, `corregge` — non `aggiunto`, `ho corretto`)
- Massimo **72 caratteri** nella prima riga
- Se servono dettagli, aggiungere una riga vuota seguita dal corpo del messaggio
- **Un commit = una cosa sola**
- Non committare su `main` direttamente — solo tramite Pull Request

### Titoli Pull Request

Il titolo della PR segue lo stesso schema del commit:

```
feat(editor): aggiunge modalità distraction-free
fix(llm): gestisce timeout nelle chiamate api
```
