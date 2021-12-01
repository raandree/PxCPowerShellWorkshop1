#$cred = Get-Credential -Credential contoso\install

$password = 'Somepass1'
$cred = New-Object pscredential('contoso\install', $password)
#to get a look at the constructor and understand why this does not work:
[pscredential]::new


$password = $password | ConvertTo-SecureString -AsPlainText -Force
$cred = New-Object pscredential('contoso\install', $password)
$cred | Export-Clixml -Path c:\cred.xml


$cred = Import-Clixml -Path C:\cred.xml
$cred.GetNetworkCredential() | fl *

#run PowerShell in the context of the machine itself
C:\Tools\SysInternals\PsExec.exe -is powershell -accepteula

#How to pass credentials in plain text to a remote machine. Don't do this
#if you don't trust the remote machine for 100%
Invoke-Command -ComputerName dscfile03 -ScriptBlock {
    ([pscredential]$args[0]).GetNetworkCredential() | fl * 
} -ArgumentList $cred
