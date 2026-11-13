@echo off
chcp 65001 >nul
title DOTA 2 MOLD DRAFT - Windows Desktop App Launcher
set "APP_FILE=%~dp0Dota2_Mold_Draft_App.html"
if not exist "%APP_FILE%" set "APP_FILE=%~dp0dota2_counter_picker.html"

if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="file:///%APP_FILE%" --window-size=1380,880
  exit
)
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="file:///%APP_FILE%" --window-size=1380,880
  exit
)
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
  start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="file:///%APP_FILE%" --window-size=1380,880
  exit
)
start "" "%APP_FILE%"
