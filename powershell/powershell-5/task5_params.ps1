function Add-MyEvent {
    param ([string]$Type,[string]$Message,[string]$filename="./local_users.csv")
    

    Get-LocalUser | Select-Object -Property Name,Fullname,SID,LastLogon | Export-Csv -Path $filename -Delimiter ','
    Import-Csv -Path $filename


    if (Test-Path $filename){
        Write-EventLog –LogName "CsvChecker" –Source “CsvCheck” –EntryType "Information" –EventID 228 –Message “$filename file has been created succesefully”


    }

    else {
        Write-EventLog –LogName "CsvChecker" –Source “CsvCheck” –EntryType "Error" –EventID 228 –Message “$filename wasn't created”

    }
    
   

}

