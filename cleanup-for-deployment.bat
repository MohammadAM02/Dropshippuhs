@echo off
echo.
echo =============================================
echo   GlowRide - Cleanup for Deployment
echo =============================================
echo.

echo Creating folders...
mkdir assets 2>nul
mkdir docs 2>nul
mkdir archive 2>nul
mkdir data 2>nul

echo.
echo Renaming main landing page...
if exist "lpage.html" (
    ren "lpage.html" "index.html"
    echo Renamed lpage.html → index.html
)

echo.
echo Moving old/duplicate HTML files to archive...
move "index (2).html" archive\ >nul 2>&1
move "index (3).html" archive\ >nul 2>&1
move "index_3.html" archive\ >nul 2>&1

echo.
echo Moving documentation to docs/...
move "GlowRide-Launch-Playbook.md" docs\ >nul 2>&1
move "14-day-playbook-2.md" docs\ >nul 2>&1
move "outreach_email_template.md" docs\ >nul 2>&1
move "whatsapp-sales-flow-2.md" docs\ >nul 2>&1
move "supplier_sources.md" docs\ >nul 2>&1
move "creative-and-ad-kit-2.md" docs\ >nul 2>&1

echo.
echo Moving data files...
move "suppliers-for-restock-2.csv" data\ >nul 2>&1

echo.
echo Moving everything else messy to archive...
move "creative-and-ad-kit-2 (1).md" archive\ >nul 2>&1
move "plan.pdf" archive\ >nul 2>&1
move "supplier_contact_sheet.html" archive\ >nul 2>&1

echo.
echo =============================================
echo Cleanup complete!
echo.
echo Your repo now has:
echo - index.html (main landing page)
echo - assets/     (for images)
echo - docs/       (documentation)
echo - data/       (csv files)
echo - archive/    (old files)
echo =============================================
echo.
pause
