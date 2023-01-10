
<#
Create a function named Get-FiluInfo2 that shows Name, Length, LastWriteTime properties of files with given extension in user's home folder.
The extension is like .txt or .csv, and it has been given as a parameter. Run the function to prove that it works. 
#>

function dirf2 {
    param (
        [string]$extension=""
    )
    
    [string]$path=$HOME

    if ($extension -eq ".csv"){
        $list_csv=(Get-ChildItem -Path $path *.csv | Select-Object -Property Name, Length, LastWriteTime)
        Write-Output $list_csv
    }

    elseif ($extension -eq ".txt") {
        $list_txt=(Get-ChildItem -Path $path *.txt | Select-Object -Property Name, Length, LastWriteTime)
        Write-Output $list_txt

    }

    else {
        Write-Host "You should include parameter to run this function!"
    }
}
