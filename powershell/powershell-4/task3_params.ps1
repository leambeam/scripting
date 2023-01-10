
<#
Create a script that ask workstation names from an user. 
The names are asked until the user gives empty input. 
After that, the script writes all names to a file in user's home folder. 
The file name is given with the parameter: filename. 
Finally show a proper message that the file was created succesfully.
#>

param([string]$filename)

while($name -ne ""){
    $name = Read-Host "Give a workstation name, press Enter to quit" 
    $path = $HOME + "\" + $filename
    Add-Content -Path $path -Value $name
}
Write-Host "$path.txt created successfully"
notepad $path

