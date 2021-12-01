$getSystemData = {
    [pscustomobject]@{
        Date = Get-Date
        Services = Get-Service
        Processes = Get-Process
        IPConfig = Get-NetIPConfiguration
        OSVersion = Get-CimInstance -ClassName Win32_OperatingSystem
    }

    $s = Get-Service w32time
    if ($s.Status -ne 'Running') {
        $s | Start-Service
    }
}

$computers = Get-ADComputer -Filter *

$r = Invoke-Command -ComputerName $computers.DNSHostName -ScriptBlock $getSystemData -ThrottleLimit 32

#don't use a ForEach-Object loop here as Invoke-Command can contact multiple computers in parallel!
#foreach ($computer in $computers) {
#    Invoke-Command -ComputerName $computer.DNSHostName -ScriptBlock $cmd    
#}
