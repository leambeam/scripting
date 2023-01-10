param([string]$folder="",[string]$file="")
$path = $folder + "\$file"

if (Test-Path $path){
    Write-Host "The $file exists"
}
else {
    $inp = Read-Host "Create the file $file? [Yes/No]"
    if ($inp -eq "Yes"){
        New-Item -Path $path -ItemType File
        Write-Host "File $file has been created inside the $folder folder"
    }
    else {
        Write-Host "File $file will not be created"
    }
}