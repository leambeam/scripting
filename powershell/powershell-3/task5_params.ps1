
<#
Create a script that takes two parameters: foldername and newname. 
Check first if the given folder, exists. 
If not, show a proper message and quit the script. 
If the folder exist, count files in the folder, and ask from a user: "All {number} files will be renamed with name {newname}. Yes/No".
 If the user returns "Yes", rename all files in the folder.
#>

param([string]$foldername="",[string]$newname="")
$extension=(Split-Path -Path $newname -Leaf).Split(".")[1] #getting a file's extension from input
$basename=(Split-Path -Path $newname -Leaf).Split(".")[0]# getting a file's name. Similar to command (Get-Item $item).Basename

if (Test-Path $foldername){
    $counter=(Get-ChildItem $foldername).Count 
    $answer=(Read-Host "`nAll $counter files will be renamed with name $newname. [Yes/No]")
    
    if ($answer -eq "Yes"){
        $files = Get-ChildItem -Path $foldername
        $num=1
	 
        foreach ($file in $files) {
		    
  	        $name = $basename + $_ + "-" + $num  + "." + $extension 
		    Rename-Item ($file.FullName) $name
            $num++    
        }

        Write-Host "`nFiles were renamed. New names are :`n"
        $newfilename=(Get-ChildItem -Path $foldername)
        foreach($file in $newfilename)
                {$file.Name}
    }

    elseif ($answer -eq "No") {
        Write-Host "The file name(s) will remain unchanged"
    }

    else {
        Write-Host "The script did not understand your answer"
    }
    
}

else {
    Write-Host "The $foldername folder does not exist"
}


