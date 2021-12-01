$chars = 'a', 'b', 'c'
$numbers = 1, 2, 3

$result = foreach ($char in $chars) {
    if ($char -eq 'b') {
        continue
    }
    
    foreach ($number in $numbers)
    {
        "$char - $number"
    }
}

$result = $chars | ForEach-Object {
    $char = $_
    $numbers | ForEach-Object {
        "$char - $_"
    }
}
<#
        a - 1
        a - 2
        ...
        c - 2
        c - 3
#>

#the foreach keyword is 12x faster then the ForEach-Object cmdlet, but does not support the pipeline
Measure-Command -Expression {
    1..100000 | ForEach-Object { }
}

Measure-Command -Expression {
    foreach ($i in (1..100000)) { }
}