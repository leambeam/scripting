$path = $HOME
$file_count = (Get-ChildItem $path).Count


Write-Host "$file_count files found at $path"