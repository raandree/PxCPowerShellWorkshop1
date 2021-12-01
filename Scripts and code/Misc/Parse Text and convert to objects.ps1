$pattern = '(?<Source>\w+);(?<LogLevel>\w+);\d;(?<Date>[\d\.:\s]+)'

$result = Select-String -Path $PSScriptRoot\ResetPassword-2013-01-22.log -Pattern $pattern

$items = foreach ($r in $result) {
    [pscustomobject]@{
        Date = $r.Matches[0].Groups['Date'].Value
        LogLevel = $r.Matches[0].Groups['LogLevel'].Value
        Source = $r.Matches[0].Groups['Source'].Value
    }
}

$items #| Where-Object ...
