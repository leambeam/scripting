
<#
Create a script that ask file names from an user. 
The names are asked until the user gives empty input. 
After that, the script creates the files with given names to user's home folder. 
The script writes the current date and time to the files in the following format 30.9.2021 12.30. 
Finally show a message that how many files were created succesfully. 
#>

$files_count = @()

do {
    [string]$files = Read-Host "Give a file name, press Enter to quit "
    if ($files -ne ""){
        $files_count += $files
        foreach ($file in $files){
            $path = $HOME + "\" + $files
            $date = (Get-Date -Format "dd.MM.yyyy HH:mm")
            Add-Content -Path $path -Value $date
            
        }
        
    }
}while ($files -ne "")

$num = $files_count.count
Write-Host "$num files were created succesfully"




