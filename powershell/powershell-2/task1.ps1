
<#
Create a script that counts how many files are in user's home folder. 
The script shows the home folder name and the number of the files. 
#>

$path = $HOME
$file_count = (Get-ChildItem $path).Count


Write-Host "$file_count files found at $path"