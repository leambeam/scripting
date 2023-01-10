$path = Read-Host "Please, give the folder to search "
$counter = (Get-ChildItem $path).Count

Write-Host "$counter files found at $path"