$count_commands = (Get-Command -CommandType Application).Count

Write-Host "You got $count_commands applications in Powershell"