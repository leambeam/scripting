param([string]$foldername)

if (Test-Path $foldername){
    Get-ChildItem -Path $foldername | Select-Object -Property Name > $HOME/files.txt
}

else {
    Write-Host "Sorry, $foldername does not exist"
}