@echo off
echo.
echo =============================================
echo     GlowRide Repo Organizer (No Python)
echo =============================================
echo.
echo This will reorganize your files into a clean structure.
echo Press any key to continue...
pause >nul

echo.
echo Creating folders...
mkdir docs\launch-playbooks 2>nul
mkdir docs\outreach 2>nul
mkdir docs\suppliers 2>nul
mkdir data 2>nul
mkdir archive 2>nul

echo.
echo Moving files...

:: Move markdown files
move "GlowRide-Launch-Playbook.md" "docs\launch-playbooks\" >nul 2>&1
move "14-day-playbook-2.md" "docs\launch-playbooks\" >nul 2>&1
move "outreach_email_template.md" "docs\outreach\" >nul 2>&1
move "whatsapp-sales-flow-2.md" "docs\outreach\" >nul 2>&1
move "supplier_sources.md" "docs\suppliers\" >nul 2>&1
move "creative-and-ad-kit-2.md" "docs\suppliers\" >nul 2>&1

:: Move data file
move "suppliers-for-restock-2.csv" "data\" >nul 2>&1

:: Move old/duplicate files to archive
move "index (2).html" "archive\" >nul 2>&1
move "index (3).html" "archive\" >nul 2>&1
move "creative-and-ad-kit-2 (1).md" "archive\" >nul 2>&1
move "plan.pdf" "archive\" >nul 2>&1

:: Rename best landing page to index.html
if exist "index_3.html" (
    ren "index_3.html" "index.html"
    echo Renamed index_3.html to index.html
)

echo.
echo =============================================
echo Done! Your repo is now organized.
echo.
echo New structure:
echo - docs\
echo - data\
echo - archive\
echo - index.html (main landing page)
echo =============================================
echo.
pause
