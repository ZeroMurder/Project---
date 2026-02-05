@echo off
chcp 65001 >nul
title Creating Project Structure

echo ==========================================
echo    CREATING PROJECT STRUCTURE
echo ==========================================
echo.

echo Step 1: Removing old structure (if exists)...
if exist backend rmdir /s /q backend
if exist frontend rmdir /s /q frontend
if exist admin rmdir /s /q admin
if exist database rmdir /s /q database
if exist docs rmdir /s /q docs

echo Step 2: Creating directories...
mkdir backend
mkdir backend\api
mkdir backend\models
mkdir backend\config

mkdir frontend
mkdir frontend\css
mkdir frontend\js
mkdir frontend\images

mkdir admin
mkdir admin\css
mkdir admin\js

mkdir database
mkdir database\migrations
mkdir database\seeds

mkdir docs

echo Step 3: Creating empty files...

REM Backend files
type nul > backend\config\database.php
type nul > backend\models\Manufacturer.php
type nul > backend\models\Product.php
type nul > backend\api\manufacturers.php
type nul > backend\api\products.php

REM Frontend files
type nul > frontend\index.html
type nul > frontend\manufacturer.html
type nul > frontend\css\style.css
type nul > frontend\js\main.js
type nul > frontend\js\manufacturer.js

REM Admin files
type nul > admin\index.html
type nul > admin\css\style.css
type nul > admin\js\admin.js

REM Database files
type nul > database\schema.sql
type nul > database\seed_data.sql

REM Script files
type nul > setup.bat
type nul > run.bat
type nul > migrate.bat
type nul > build_complete.bat
type nul > README.txt

echo.
echo ==========================================
echo STRUCTURE CREATED SUCCESSFULLY!
echo.
echo Created:
echo - 15 directories
echo - 18 empty files
echo.
echo Now run: fill_files.bat
echo to fill files with actual code.
echo ==========================================
echo.
pause