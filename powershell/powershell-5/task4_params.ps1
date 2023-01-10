
<#
Create a script that writes information of all the local users in a computer to a CSV-file. 
The script has one parameter filename. The information includes local users's 1) name 2) full name 3) SID and 4) lastlogon. 
#>

param([string]$filename)

Get-LocalUser | Select-Object -Property Name,Fullname,SID,LastLogon | Export-Csv -Path $filename -Delimiter ','

Import-Csv -Path $filename

notepad $filename