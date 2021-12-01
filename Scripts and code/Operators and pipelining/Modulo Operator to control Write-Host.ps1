1..100 | ForEach-Object { 
    Start-Sleep -Milliseconds 100
    if ($_ % 10 -eq 0) {
        Write-Host . -NoNewline
    }
}
