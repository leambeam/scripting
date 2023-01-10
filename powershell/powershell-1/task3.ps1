$a = Read-Host "Please enter the first integer"
$b = Read-Host "Please give the second integer"

$a = [int]$a
$b = [int]$b

$add = $a + $b 
$substract = $a - $b 
$multiply = $a * $b
$divide = $a / $b

Write-Host "Sum is $add"
Write-Host "Substraction is $substract"
Write-Host "Multiplication is $multiply"
Write-Host "Division is $divide"