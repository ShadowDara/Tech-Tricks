# https://github.com/weuritz8u/change-file-extension

$old_extension = Read-Host "Old File extension: "
$new_extension = Read-Host "New File extension: "

Get-ChildItem *.$old_extension | ForEach-Object {

    Rename-Item $_.FullName -NewName ($_.BaseName + "." + $new_extension)
}
