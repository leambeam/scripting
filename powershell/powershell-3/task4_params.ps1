param([string]$folder="",[string]$file="", [int]$number=0)

#If Test-Path is True => Do nothing
if (Test-Path $folder){
    Write-Host "`nThe folder $folder exists`n"
    
}
else {
    #If Test-Path is not True => create the folder then create files.
    #| Select-Object -First 0 is used to suppress the output of New-Item command 
    Write-Host "`nThe folder $folder does not exist, creating it now`n"
    New-Item -Path .  -Name "$folder" -ItemType "directory" | Select-Object -First 0 
    1..$number | ForEach-Object {New-Item -path $folder -Name "$_$file" -ItemType "file" } | Select-Object -First 0
    Write-Host "`n$number file(s) has(ve) been created in the folder $folder`n"   
    $list_files = (Get-ChildItem -Path $folder)
    foreach($i in $list_files)
        {$i.Name}
}





