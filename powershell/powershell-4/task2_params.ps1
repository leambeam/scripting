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
