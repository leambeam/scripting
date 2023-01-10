param([string]$ip = "192.168.1.1",[int]$tries = 1)

Write-Host "I will ping $ip $tries time, okay?"
$answer = Read-Host "[Y/N]"

if ($answer -eq "Y"){
    for ($i=1; $i -le $tries; $i++ ){
        Write-Host "try $i to ping $ip"
        Start-Sleep -Seconds 1.5}}
else {
    Write-Host "You stopped the ping"
}


    