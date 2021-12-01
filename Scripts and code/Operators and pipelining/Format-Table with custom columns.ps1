#Simple output using Format-Table
Get-Process | Select-Object -First 10 | Format-Table -Property Name,StartTime, Threads

#same thing but with a custom column, defined with a hashtable that has
#two key-value pairs defining the name and the value of a column entry
Get-Process | Select-Object -First 10 | Format-Table -Property Name,StartTime, Threads, @{ Name = 'ThreadCount'; Expression = { $_.Threads.Count } }

#the same works for Select-Object
Get-Process | Select-Object -First 10 | Select-Object -Property Name,StartTime, Threads, @{ Name = 'ThreadCount'; Expression = { $_.Threads.Count } }

#and as the return type of Select-Object is an object again, we can treat it 
#like any other object and for example filter the result
Get-Process | Select-Object -First 10 |
Select-Object -Property Name, StartTime, Threads,
@{ Name = 'ThreadCount'; Expression = { $_.Threads.Count } } |
Where-Object threadcount -gt 5