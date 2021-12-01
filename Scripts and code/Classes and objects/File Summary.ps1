$files = Get-ChildItem -Path E:\LabSources -File -Recurse

$files2 = foreach ($file in $files) {
    if ($file.Length -lt 50MB) {
        $category = 'Small'
    }
    elseif ($file.Length -lt 1GB) {
        $category = 'Medium'
    }
    else {
        $category = 'Large'
    }
    
    [pscustomobject]@{
        Category = $category
        Length = $file.Length
        FullName = $file.FullName
    }
}

$files2 | Group-Object -Property Category

$files2 | Where-Object Category -eq Large | Measure-Object -Property Length -Sum -Average

#To get all commands for working with objects in general, use
#Get-Command -Noun Object