$cmd = { Get-Date }


$start = Get-Date
1..20 | ForEach-Object {
    Invoke-Command -ComputerName DSCFile01 -ScriptBlock $cmd
}
$end = Get-Date
"$($end - $start)"

#-----------------------------------------------------

$cmd = { Get-Date }
$s = New-PSSession -ComputerName DSCFile01

$start = Get-Date
1..20 | ForEach-Object {
    Invoke-Command -Session $s -ScriptBlock $cmd
}
$end = Get-Date

$s | Remove-PSSession

"$($end - $start)"
