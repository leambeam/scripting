
<#
Create a script that writes current logged username and current date to console. 
#>

$username = $env:UserName
$date = Get-Date -Format "dd.MM.yyyy"

Write-Host "logged username is $username and today is $date"