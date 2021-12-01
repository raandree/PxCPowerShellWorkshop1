#get file name
$p = 'C:\Windows\explorer.exe'
$p.Substring($p.LastIndexOf('\') + 1)
$p.Split('\')[-1]
[System.IO.Path]::GetFileName($p)
Split-Path -Path $p -Leaf

$p = 'C:\Windows\explorer.exe'
$p.Split('\')[1]
[System.IO.Path]::GetFileName([System.IO.Path]::GetDirectoryName($p))
Split-Path -Path (Split-Path -Path $p -Parent) -Leaf

Convert-Path -Path c:\w*

Test-Path -Path C:\Windows -PathType Leaf

$p = 'C:\Windows'
$file = 'explorer.exe'
$fullPath = $p + '\' + $file
$fullPath = "$p\$file"
$fullPath

Join-Path -Path $p -ChildPath $file

