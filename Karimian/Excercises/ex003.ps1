Clear-Host
[int]$salary=Read-Host("Please enter salary")
$b=$salary*10/100
$m=$salary*5/100
$h=$salary-$b-$m
$h