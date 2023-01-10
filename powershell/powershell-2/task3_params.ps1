
<#
Create a script that takes three parameters. The parameters are strings. The script order the given strings by string length. 
Test your script at least with four different test runs, like in the picture.
#>

param($a,$b,$c)
$words = $a,$b,$c

$ordered_words = $words | Sort-Object -Property Length

Write-Host "Parameters are: $words"
Write-Host "Your ordered words are: $ordered_words"
