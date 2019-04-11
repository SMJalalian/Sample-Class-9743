Clear-Host
[int]$A = Read-Host "Please Enter First Number"
[int]$B = Read-Host "Please Enter Second Number"
[int]$C = Read-Host "Please Enter Third Number"
[int]$SUM = $A + $B + $C
$AVG = $SUM / 3
Write-Host("Average is = $AVG")