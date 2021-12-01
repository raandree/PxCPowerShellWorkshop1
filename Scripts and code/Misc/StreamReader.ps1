$sr = New-Object System.IO.StreamReader("$PSScriptRoot\ResetPassword-2013-01-22.log")

while (-not $sr.EndOfStream) {
    $line = $sr.ReadLine()
    $line.Length
}

$sr.Close()
