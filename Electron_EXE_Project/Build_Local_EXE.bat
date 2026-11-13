@echo off
chcp 65001 >nul
title Сборка Dota2_Mold_Draft_Windows.exe
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [!] Node.js не найден на этом ПК.
    echo Скачайте Node.js LTS с https://nodejs.org/ или используйте GitHub Actions из папки .github/workflows/
    pause
    exit /b 1
)
echo Устанавливаем Electron и собираем отдельный .exe...
call npm install
call npm run build
echo Готово! Ваш файл находится в папке dist\Dota2_Mold_Draft_Windows.exe
pause
