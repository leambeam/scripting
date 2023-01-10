
<#
Create a script that takes two parameters: foldername and filename. 
Check first if the given file is in the given folder. 
If the file exists, show a proper message. 
If it does not exist, ask from a user "Create the file {filename}? Yes/No". If the user returns "Yes", create the file to the folder. 
#>

param([string]$folder="",[string]$file="")
$path = $folder + "\$file"

if (Test-Path $path){
    Write-Host "The $file exists"
}
else {
    $inp = Read-Host "Create the file $file? [Yes/No]"
    if ($inp -eq "Yes"){
        New-Item -Path $path -ItemType File
        Write-Host "File $file has been created inside the $folder folder"
    }
    else {
        Write-Host "File $file will not be created"
    }
}