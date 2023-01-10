
<#
Create a script that takes one parameter: foldername. Check if the given folder exist. 
If it exist, first show how many files are in the folder and then list filenames. 
If the folder does not exist, the script will show a message: "Sorry, {foldername} does not exist.".
#>

param([string]$folder = "")

if (Test-Path $folder){
    $list_files = (Get-ChildItem -Path $folder)
    $counter = $list_files.Count
    Write-Host "$counter files in the folder $folder`n"
    Write-Host "Name`n----"
    foreach($file in $list_files)
        {$file.Name}

}
else {
    Write-Host "Sorry, $folder does not exist"
}

