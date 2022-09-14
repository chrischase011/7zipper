<# Chase #>

Write-Host "Welcome to 7z Zipper`n`n"

$path = Read-Host "Enter folder directory"

if (Test-Path -Path $path) {
    <# Action to perform if the condition is true #>

    $file_name = Read-Host "Enter Zip file name"
    
    # Execute the 7z.exe command

    7z.exe a -tzip $file_name $path

    mv (-join($file_name,'','.zip')) $path

}
else{
    Write-Host "Directory not found!!!"
}

