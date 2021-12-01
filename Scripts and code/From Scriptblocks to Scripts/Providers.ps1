#Environment variables can be treated like news
New-Item -Path env: -Name x1 -Value 123
Remove-Item -Path Env:\x1

#these variables are only available in the current session
#to create user or machine script env variables, use the Environment class
[System.Environment]::SetEnvironmentVariable('x2', '123', 'Machine')
[System.Environment]::SetEnvironmentVariable('x2', '123', 'User')

#also the registry is exposed as a provider
mkdir -Path HKCU:\Software\PxC -Force | cd
New-ItemProperty -Path . -Name Path -PropertyType String -Value D:\

#list certificates in certain store
dir Cert:\CurrentUser\My

#list all certificates about to expire within the next year
$d = (Get-Date).AddYears(1)
dir -Recurse | Where-Object NotAfter -LT $d

#get a list of all provicers and drives
Get-PSProvider
Get-PSDrive

#other interesting proviers are:
# - SQL
# - IIS
# - AD
