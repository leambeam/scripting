param([string]$filename)

if (Test-Path $filename){
    $url_list = Get-Content -Path $filename 
    foreach($url in $url_list){
        Start-Process $url
        }   
}

else {
    Write-Host "Sorry, $filename does not exist"
}