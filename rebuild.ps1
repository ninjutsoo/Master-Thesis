# Rebuild LaTeX document with full sequence
Write-Host "Cleaning previous builds..." -ForegroundColor Yellow
& "C:\Users\mrosh\AppData\Local\Programs\cursor\resources\app\bin\latexmk.cmd" -C | Out-Null

Write-Host "`nStep 1/4: First pdflatex pass..." -ForegroundColor Cyan
& "C:\Users\mrosh\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex.exe" -interaction=nonstopmode -synctex=1 main.tex | Out-Null
if ($LASTEXITCODE -eq 0 -or $LASTEXITCODE -eq 1) {
    Write-Host "  ✓ Complete" -ForegroundColor Green
} else {
    Write-Host "  ✗ Failed with code $LASTEXITCODE" -ForegroundColor Red
    exit
}

Write-Host "`nStep 2/4: Running BibTeX..." -ForegroundColor Cyan
& "C:\Users\mrosh\AppData\Local\Programs\MiKTeX\miktex\bin\x64\bibtex.exe" main | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "  ✓ Complete" -ForegroundColor Green
} else {
    Write-Host "  ✗ Failed with code $LASTEXITCODE" -ForegroundColor Red
}

Write-Host "`nStep 3/4: Second pdflatex pass..." -ForegroundColor Cyan
& "C:\Users\mrosh\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex.exe" -interaction=nonstopmode -synctex=1 main.tex | Out-Null
if ($LASTEXITCODE -eq 0 -or $LASTEXITCODE -eq 1) {
    Write-Host "  ✓ Complete" -ForegroundColor Green
} else {
    Write-Host "  ✗ Failed with code $LASTEXITCODE" -ForegroundColor Red
}

Write-Host "`nStep 4/4: Third pdflatex pass (resolving references)..." -ForegroundColor Cyan
& "C:\Users\mrosh\AppData\Local\Programs\MiKTeX\miktex\bin\x64\pdflatex.exe" -interaction=nonstopmode -synctex=1 main.tex | Out-Null
if ($LASTEXITCODE -eq 0 -or $LASTEXITCODE -eq 1) {
    Write-Host "  ✓ Complete" -ForegroundColor Green
} else {
    Write-Host "  ✗ Failed with code $LASTEXITCODE" -ForegroundColor Red
}

Write-Host "`n=== Build Complete ===" -ForegroundColor Green
if (Test-Path main.pdf) {
    $pdf = Get-Item main.pdf
    Write-Host "PDF: main.pdf ($([math]::Round($pdf.Length/1MB, 2)) MB)" -ForegroundColor Green
    Write-Host "The PDF should now have:" -ForegroundColor Cyan
    Write-Host "  • Table of Contents (page ii)" -ForegroundColor White
    Write-Host "  • Proper citations (not question marks)" -ForegroundColor White
    Write-Host "  • Clickable links" -ForegroundColor White
} else {
    Write-Host "ERROR: PDF was not created!" -ForegroundColor Red
}

