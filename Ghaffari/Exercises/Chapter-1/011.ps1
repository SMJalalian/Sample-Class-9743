[int]$a = Read-Host 
[int]$b = Read-Host
[int]$c = Read-Host
$ab = $a + $b
$ac = $a + $c
$bc = $b + $c
if  (($ab -ge $c) -or ($ac -ge $b) -or ($bc -ge $a)) { Write-Host("Impossible")}
    else {Write-Host("Possible") }