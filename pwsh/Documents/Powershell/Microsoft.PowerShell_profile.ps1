function prompt {
    $user = $env:USERNAME
    $computer = $env:COMPUTERNAME
    
    $currentPath = $ExecutionContext.SessionState.Path.CurrentLocation.Path
    
    $homePath = $HOME
    
    if ($currentPath.StartsWith($homePath)) {
        $displayPath = "~" + $currentPath.Substring($homePath.Length)
    } else {
        $displayPath = $currentPath
    }

    $blue = "`e[94m"
    $white = "`e[97m"
    $reset = "`e[0m"

    # Construir el prompt
    Write-Host "┌──(" -NoNewline -ForegroundColor Blue
    Write-Host "$user" -NoNewline -ForegroundColor White
    Write-Host "㉿" -NoNewline -ForegroundColor Blue
    Write-Host "$computer" -NoNewline -ForegroundColor White
    Write-Host ")-[" -NoNewline -ForegroundColor Blue
    Write-Host "$displayPath" -NoNewline -ForegroundColor White
    Write-Host "]" -NoNewline -ForegroundColor Blue
    Write-Host "`n└─" -NoNewLine -ForegroundColor Blue
    
    # Retornar la línea de abajo
    return "$reset$ "
}