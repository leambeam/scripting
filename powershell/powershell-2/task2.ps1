
<#
Create a script that counts how many files and folders are in given folder. 
The script shows the name of the folder and the number of the files. 
#>

$path = Read-Host "Please, give the folder to search "
$counter = (Get-ChildItem $path).Count

Write-Host "$counter files found at $path"