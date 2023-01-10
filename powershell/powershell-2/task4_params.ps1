param([string]$name = "unknown",[int]$hello = 1)

for ($i = 1; $i -le $hello; $i++ ){
    Write-Host("Hello $name")
}



