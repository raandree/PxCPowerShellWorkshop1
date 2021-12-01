Import-Csv -Path D:\People.csv -Delimiter ';' | Where-Object Surname -eq Obama

Import-Csv -Path D:\People.csv -Delimiter ';' |
Sort-Object -Property Department |
Export-Csv D:\PeopleSorted.csv

dir -File | ConvertTo-Json -Depth 2 | Out-File -FilePath d:\Files.json
$h = Get-Content -Path D:\Files.json | ConvertFrom-Json

$files = dir E:\LabSources\Tools -Recurse
$files | Export-Csv D:\Files.csv
$files | ConvertTo-Json | Out-File -FilePath D:\Files.json
$files | Export-Clixml -Path d:\files.xml
$files | ConvertTo-Json -Depth 2 | ConvertFrom-Json | ConvertTo-Yaml | Out-File -FilePath D:\Files.yml
