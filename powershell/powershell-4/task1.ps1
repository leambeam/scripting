function dirf {
    Get-ChildItem $HOME | Select-Object -Property Name, Length, LastWriteTime
    
    
}

