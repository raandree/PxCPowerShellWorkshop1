$getSystemData = {
    param(
        [bool]$FixTimeService
    )
    [pscustomobject]@{
        Date = Get-Date
        Services = Get-Service
        Processes = Get-Process
        IPConfig = Get-NetIPConfiguration
        OSVersion = Get-CimInstance -ClassName Win32_OperatingSystem
    }

    $s = Get-Service w32time
    if ($s.Status -ne 'Running' -and $FixTimeService) {
        $s | Start-Service
        Write-Host "Time Service started on machine '$($env:COMPUTERNAME)'"
    }
}

$computers = Get-ADComputer -Filter *

$r = Invoke-Command -ComputerName $computers.DNSHostName -ScriptBlock $getSystemData -ArgumentList $false

#don't use a ForEach-Object loop here as Invoke-Command can contact multiple computers in parallel!
#foreach ($computer in $computers) {
#    Invoke-Command -ComputerName $computer.DNSHostName -ScriptBlock $cmd    
#}
