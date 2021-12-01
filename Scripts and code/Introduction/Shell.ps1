#Get the history from the PSReadline history file

start (Get-PSReadLineOption).HistorySavePath

#Get the system's path variable
$env:Path -split ';'
#and where PowerShell looks for locally installed modules (Get-Module -ListAvailable)
$env:PSModulePath -split ';'

#Another split sample using a regular expresion
'192.168.10.10/24' -split '\.|/'

#Install a module and list the function scope (published cmdlets)
Install-Module chocolatey -Force
Get-Command -Module chocolatey  

#Syntax
<#
Get-WinEvent 
[[-LogName] <string[]>]                     The whole parameter is optional and the LogName is a positional 
                                            argument, hence both works
                                                Get-WinEvent -LogName system
                                                Get-WinEvent system
[-MaxEvents <long>]                         Optional named parameter, meaning that the value cannot be assigned
                                            using just an argument witout the parameter name.
-ComputerName <string>                      Manadatory parameter
#>

Get-Help YourCommand -Full                  #List also the parameter metadata
