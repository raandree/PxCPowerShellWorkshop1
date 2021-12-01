$x = dir -Recurse | Where-Object { $_.CreationTime.DayOfWeek -eq 'Saturday' -or $_.CreationTime.DayOfWeek -eq 'Sunday'}
$x.Count #3881

#the -in operator makes the code easier to read
$x = dir -Recurse | Where-Object { $_.CreationTime.DayOfWeek -in 'Saturday', 'Sunday'}
$x.Count #3881