
<#
In this task you have to create a new function called Add-MyEvent. The function takes two parameter: Type and Message. 
The type can be: Error, Warning, or Information. Message is a clear message. Add the following functionality to the task 04 using your new function.
- if the script can create a new CSV-file succesfully, then it will add a Information message to the eventlog. - if the script cannot create a file succesfully, then it adds a Error message to the eventlog.
Before using your new function create a new source named "MyPowerShell" to the Evenlog for writing your events. 
#>

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

