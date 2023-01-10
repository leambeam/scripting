
<#
Create an array named $names, that includes seven (7) names. 
You can select the names, they can be your friends or comic characters. 
Create a script that show how many items is in the array, shows the items and so also the first and last name of the array. 
#>

$names =@("Grigory", "Ivan", "Taavi", "Yago", "Veeti", "Adham", "Onni")

$counter = ($names).Count

$oldest = $names[0]
$youngest = $names[6]



Write-Host "There are $counter brothers: "
$names
Write-Host "The oldest is $oldest and the youngest is $youngest"

