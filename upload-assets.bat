@echo off
echo.
echo =============================================
echo     GlowRide Asset Uploader (Windows)
echo =============================================
echo.

mkdir assets\hero 2>nul
mkdir assets\product 2>nul
mkdir assets\generated 2>nul
mkdir assets\ads 2>nul
mkdir assets\screenshots 2>nul
mkdir assets\icons 2>nul

echo Choose where to upload your images:
echo.
echo 1. hero
echo 2. product
echo 3. generated
echo 4. ads
echo 5. screenshots
echo 6. icons
echo.

set /p choice="Enter number (1-6): "

if %choice%==1 set folder=hero
if %choice%==2 set folder=product
if %choice%==3 set folder=generated
if %choice%==4 set folder=ads
if %choice%==5 set folder=screenshots
if %choice%==6 set folder=icons

if not defined folder (
    echo Invalid choice!
    pause
    exit
)

echo.
echo =============================================
echo Folder ready: assets\%folder%\
echo.
echo Copy your image files into that folder now.
echo.
echo After copying, run these commands in Git:
echo.
echo git add assets\%folder%\
echo git commit -m "Add new assets to %folder%"
echo git push
echo.
echo Press any key to close...
pause >nul
