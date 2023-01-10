param($a,$b,$c)
$words = $a,$b,$c

$ordered_words = $words | Sort-Object -Property Length

Write-Host "Parameters are: $words"
Write-Host "Your ordered words are: $ordered_words"
