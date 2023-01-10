
<#
Ask from user his/her firstname, lastname and groupcode. 
Save them to variables. After that show the following info in console. 
#>

$name = Read-Host "Please enter your name"
$surname = Read-Host "Please enter your surname"
$groupcode = Read-Host "Please enter your group code"

Write-Host "Welcome to course: $name $surname $groupcode"
