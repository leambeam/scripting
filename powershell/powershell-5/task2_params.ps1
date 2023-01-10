
<#
Create a script that opens all the given urls to a browser. 
The script has one parameter filename. 
The parameter points to a text file where urls are. 
Check first that the given file exist, then read all lines and open the urls in a browser. 
If the given file does not exist, the script will show a error message.
#>

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