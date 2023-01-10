
<#
Create a script that takes one parameter: foldername. 
First check that the given folder exist, then write all names of files in the folder to a text file named files.txt.
Create the file to user's home folder. If the folder does not exist, the script will show a message: "Sorry, {foldername} does not exist." 
#>

param([string]$foldername)

if (Test-Path $foldername){
    Get-ChildItem -Path $foldername | Select-Object -Property Name > $HOME/files.txt
}

else {
    Write-Host "Sorry, $foldername does not exist"
}