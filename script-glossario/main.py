import re
import subprocess   
from pathlib import Path

termini = []

# Legge i termini dal glossario e li ordina per lunghezza decrescente
with open("script-glossario/glossario.txt", "r") as file:
    glossario = file.readlines()

    for linea in glossario:
        termine = linea.strip()
        if termine:
            termini.append(termine)   

termini.sort(key = len, reverse = True)


# Ottiene la lista dei file modificati nell'ultimo commit
result = subprocess.run(
    ["git", "diff", "--name-only", "HEAD~1", "HEAD"],
    capture_output=True,
    text=True
)

# splitta l'output per newline e rimuove stringhe vuote
files = [f for f in result.stdout.strip().split("\n") if f]

# filtro solo i .tex escludendo il glossario
documenti = [
    f for f in files
    if f.endswith(".tex") and "glossario.tex" not in f
]

# Per ogni documento, legge il contenuto, aggiunge $_G$ dopo ogni termine del glossario (escludendo i comandi LaTeX) 
for documento in documenti:
    with open(documento, "r", encoding="utf-8") as file:
        contenuto = file.read()
    
    inizio, corpo = contenuto.split(r"\begin{document}", 1)

    for termine in termini:
        pattern = r'\\[a-zA-Z]+\{[^}]*\}|\b' + re.escape(termine) + r'\b(?!\$_G\$)'

        def sostituisci(match):
            if match.group(0).startswith("\\"):
                return match.group(0)  # Non sostituisce se è un comando LaTeX
            return match.group(0) + '$_G$'  # Aggiunge $_G$ dopo il termine
        
        corpo = re.sub(
            pattern,
            sostituisci,
            corpo,
            flags=re.IGNORECASE
        )


    # Corregge il caso in cui un termine piu corto è contenuto in un termine piu lungo, aggiungendo $_G$ solo dopo il termine lungo
    for termine_lungo in termini:
        for termine_corto in termini:
            if termine_corto != termine_lungo and termine_corto.lower() in termine_lungo.lower():
    
                pattern_sbagliato = re.escape(termine_corto) + r'\$_G\$' + re.escape(termine_lungo[len(termine_corto):]) + r'\$_G\$'
                pattern_corretto = termine_lungo + r'$_G$'
                corpo = re.sub(pattern_sbagliato, pattern_corretto, corpo, flags=re.IGNORECASE)

    contenuto = inizio + r"\begin{document}" + corpo

    with open(documento, "w", encoding="utf-8") as file:
        file.write(contenuto)