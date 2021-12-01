$result1 = @()
$result2 = [System.Collections.ArrayList]::new()

Measure-Command -Expression {
    1..20000 | ForEach-Object {
        $result1 += "Test $_"
    }
}

Measure-Command -Expression {
    1..20000 | ForEach-Object {
        $result2.Add("Test $_")
    }
}

#this is roughly the procedure that happens when using the += operator on arrays
$a = 1..3
$temp = [object[]]::new($a.Length + 1)
for ($i = 0; $i -lt $a.Length; $i++) {
    $temp[$i] = $a[$i]
}
$temp[$a.Length] = 4
$a = $temp
