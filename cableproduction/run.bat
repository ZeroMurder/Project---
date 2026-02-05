@echo off
chcp 65001 >nul
title Starting CableProduction

echo ==========================================
echo    STARTING CABLEPRODUCTION
echo ==========================================
echo.

echo Step 1: Checking project location...

REM Check if project is in XAMPP htdocs
if exist "C:\xampp\htdocs\cableproduction\frontend\index.html" (
    echo Project found in XAMPP htdocs
    set project_path=C:\xampp\htdocs\cableproduction
    goto open_app
)

echo Project not found in XAMPP htdocs.
echo.
echo Copying project to XAMPP...
echo.

REM Create directory in XAMPP htdocs
if not exist "C:\xampp\htdocs\cableproduction" (
    mkdir "C:\xampp\htdocs\cableproduction"
)

REM Copy all files
echo Copying files...
xcopy /E /I /Y . "C:\xampp\htdocs\cableproduction\"

set project_path=C:\xampp\htdocs\cableproduction

:open_app
echo.
echo Step 2: Opening application...
echo.

echo Opening main application...
start http://localhost/cableproduction/

echo Opening admin panel...
timeout /t 1 >nul
start http://localhost/cableproduction/admin/

echo.
echo ==========================================
echo APPLICATION SHOULD BE OPENING!
echo.
echo If you see file list instead of website:
echo 1. Refresh the page (F5)
echo 2. Or open: http://localhost/cableproduction/frontend/
echo.
echo Admin panel: http://localhost/cableproduction/admin/
echo Admin login: admin / admin
echo.
echo Troubleshooting:
echo 1. Make sure XAMPP is running (Apache + MySQL)
echo 2. Check C:\xampp\htdocs\cableproduction\ exists
echo 3. Run migrate.bat to create database
echo ==========================================
echo.
pause