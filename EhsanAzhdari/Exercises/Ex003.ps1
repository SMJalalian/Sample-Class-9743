Clear-Host
[int]$A = Read-Host "Please Enter Salary"
[int]$B = (10 * $A) / 100
[int]$M = (5 * $A) / 100
[int]$S = $B + $M
[int]$H = $A - $S
Write-Host("Salary Pay = $H")