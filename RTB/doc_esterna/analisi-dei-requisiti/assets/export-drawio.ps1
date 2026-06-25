# Esporta in batch tutti i sorgenti .drawio in PDF (cartella ../img).
# Richiede draw.io desktop installato (https://github.com/jgraph/drawio-desktop/releases).
#
# Uso:  cd RTB/doc_esterna/analisi-dei-requisiti/assets ; ./export-drawio.ps1

$ErrorActionPreference = 'Stop'

# Cartelle (relative alla posizione dello script)
$srcDir = Join-Path $PSScriptRoot 'draw.io'
$outDir = Join-Path $PSScriptRoot 'img'

# Individua l'eseguibile di draw.io
$candidates = @(
    "$env:LOCALAPPDATA\Programs\draw.io\draw.io.exe",
    "$env:ProgramFiles\draw.io\draw.io.exe",
    "${env:ProgramFiles(x86)}\draw.io\draw.io.exe"
)
$drawio = $candidates | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $drawio) {
    throw "draw.io.exe non trovato. Installa draw.io desktop, poi rilancia lo script."
}
Write-Host "Uso draw.io: $drawio"

$files = Get-ChildItem -Path $srcDir -Filter '*.drawio'
Write-Host "Trovati $($files.Count) file .drawio da esportare in $outDir`n"

foreach ($f in $files) {
    $out = Join-Path $outDir ($f.BaseName + '.pdf')
    Write-Host "  $($f.Name) -> $($f.BaseName).pdf"
    & $drawio --export --format pdf --crop --output $out $f.FullName | Out-Null
}

Write-Host "`nFatto. PDF rigenerati in $outDir"
