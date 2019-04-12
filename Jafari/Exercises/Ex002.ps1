[int] $A = Read-Host "Enter The 1st Number"
[int] $B = Read-Host "Enter The 2nd Number"
[int] $C = Read-Host "Enter The 3rd Number"
$S = $A + $B + $C
$AVE = $S / 3
Write-Host ("The Average is: " + $AVE)