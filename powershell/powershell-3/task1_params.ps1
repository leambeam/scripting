param([string]$folder = "")

if (Test-Path $folder){
    $list_files = (Get-ChildItem -Path $folder)
    $counter = $list_files.Count
    Write-Host "$counter files in the folder $folder`n"
    Write-Host "Name`n----"
    foreach($file in $list_files)
        {$file.Name}

}
else {
    Write-Host "Sorry, $folder does not exist"
}

