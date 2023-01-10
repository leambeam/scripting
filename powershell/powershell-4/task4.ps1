$files_count = @()

do {
    [string]$files = Read-Host "Give a file name, press Enter to quit "
    if ($files -ne ""){
        $files_count += $files
        foreach ($file in $files){
            $path = $HOME + "\" + $files
            $date = (Get-Date -Format "dd.MM.yyyy HH:mm")
            Add-Content -Path $path -Value $date
            
        }
        
    }
}while ($files -ne "")

$num = $files_count.count
Write-Host "$num files were created succesfully"




