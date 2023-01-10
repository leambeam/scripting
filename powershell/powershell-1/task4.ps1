$names =@("Grigory", "Ivan", "Taavi", "Yago", "Veeti", "Adham", "Onni")

$counter = ($names).Count

$oldest = $names[0]
$youngest = $names[6]



Write-Host "There are $counter brothers: "
$names
Write-Host "The oldest is $oldest and the youngest is $youngest"

