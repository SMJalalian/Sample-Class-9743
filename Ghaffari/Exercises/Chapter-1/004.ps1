Clear-Host
[flood]$T = Read-Host "Please enter the Time "
$H = $T / 3600
$R = $T - ($H * 3600)
$M = $R/60
[int]$S = $R - ( $M * 60 )

$H
$R
$M
$S

Write-Host("the time is $H : $M : $S")