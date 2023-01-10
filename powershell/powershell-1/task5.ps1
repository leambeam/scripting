
<#
PowerShell includes many kind of commands: alias, cmdlets, function and application. 
Create a script that counts how many application PowerShell returns.
#>

$count_commands = (Get-Command -CommandType Application).Count

Write-Host "You got $count_commands applications in Powershell"