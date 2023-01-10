
<#
Create a script that takes two named parameters. The first parameter is name of user, second how many times the script greets the user. 
Give default values for parameters, so if we run the script without arguments, it will say Hello unknown only once. 
#>

param([string]$name = "unknown",[int]$hello = 1)

for ($i = 1; $i -le $hello; $i++ ){
    Write-Host("Hello $name")
}



