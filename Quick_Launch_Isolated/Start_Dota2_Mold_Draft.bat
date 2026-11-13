@echo off
chcp 65001 >nul
set "APP_HTML=%~dp0index.html"
set "APP_DATA=%LOCALAPPDATA%\Dota2MoldDraftApp"
if not exist "%APP_DATA%" mkdir "%APP_DATA%"

if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="file:///%APP_HTML%" --user-data-dir="%APP_DATA%" --window-size=1380,880 --class=Dota2MoldDraft
  exit
)
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
  start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="file:///%APP_HTML%" --user-data-dir="%APP_DATA%" --window-size=1380,880 --class=Dota2MoldDraft
  exit
)
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
  start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="file:///%APP_HTML%" --user-data-dir="%APP_DATA%" --window-size=1380,880 --class=Dota2MoldDraft
  exit
)
start "" "%APP_HTML%"
