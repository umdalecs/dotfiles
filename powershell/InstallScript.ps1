$current_dir=Get-Location

Write-Host "Creando links simbólicos"

New-Item -ItemType SymbolicLink -Target $current_dir -Path $HOME\Documents\powershell
New-Item -ItemType SymbolicLink -Target $current_dir\alecs.omp.json  -Path $env:POSH_THEMES_PATH\alecs.omp.json