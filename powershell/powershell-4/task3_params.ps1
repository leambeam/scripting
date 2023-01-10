

param([string]$filename)

while($name -ne ""){
    $name = Read-Host "Give a workstation name, press Enter to quit" 
    $path = $HOME + "\" + $filename
    Add-Content -Path $path -Value $name
}
Write-Host "$path.txt created successfully"
notepad $path

