param([string]$filename)

Get-LocalUser | Select-Object -Property Name,Fullname,SID,LastLogon | Export-Csv -Path $filename -Delimiter ','

Import-Csv -Path $filename

notepad $filename