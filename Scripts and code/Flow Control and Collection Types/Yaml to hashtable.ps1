$tvs = Get-Content -Path $PSScriptRoot\tvs.yml |
ConvertFrom-Yaml

$tvs.LivingRoom[0]