$filePath = 'C:\Users\jinhoe.lian\OneDrive - NTT\Learning Projects\RDP\PWD Replacement\file.txt'
$filePath -replace ' ', '` '
$tempFilePath = "$env:TEMP\$($filePath | Split-Path -Leaf)"
$find = 'foo'
$replace = 'bar'

(Get-Content -Path $filePath) -replace $find, $replace | Add-Content -Path $tempFilePath

Remove-Item -Path $filePath
Move-Item -Path $tempFilePath -Destination $filePath