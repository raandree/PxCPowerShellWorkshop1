function Get-SmallFile
{
    param(
        [Parameter(Mandatory)]
        [string]$Path,
        
        [Parameter(ParameterSetName = 'kb')]
        [long]$MaxSize = 100KB,
        
        [Parameter(ParameterSetName = 'SizeCategory')]
        [ValidateSet('Small', 'Medium', 'Large', 'Gigantic')]
        [string]$Size
    )

    Get-ChildItem -Path $Path -File | 
        Where-Object Length -lt $MaxSize | 
        Measure-Object -Property Length -Sum    
}

Get-SmallFile -Path C:\Windows -Size Gigantic
