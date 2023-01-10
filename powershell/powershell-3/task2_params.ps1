
<#
Create a script that takes two parameters: foldername and filename. Check first if the given folder exist. 
If the folder exists, check if the file exists in the folder. 
If true, show a proper message. If it does not exist, show a message: "Sorry, {filename} in the {foldername} does not exist.". 
#>

param([string]$folder="",[string]$file="")
$file = $folder + "\$file"

if (Test-Path $folder){ #if the folder is exist 
    if (Test-Path $file){ #if the file is exist 
        Write-Host "File $file is exist`n"
        $list_files = (Get-ChildItem -Path $folder)
        $counter = $list_files.Count
        Write-Host "There are $counter files in the folder $folder`n"
        Write-Host "Name`n----"
        foreach($i in $list_files)
            {$i.Name}
        }
    else {
        Write-Host "Sorry, there is no such file as $file in $folder folder"
    }

}
else {
    Write-Host "Sorry, folder $folder does not exist"
}

