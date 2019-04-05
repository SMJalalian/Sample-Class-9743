Clear-Host
$T = Read-Host "Please write the time"
$H =  [math]::Floor($T/3600)
Write-Host("The Hour(s) is : $H")
$r = $T - ($H*3600)
$m =  [math]::Floor($r/60)
Write-Host("The Minute(s) is : $m")
$S = $r - ($m*60)
Write-Host("The Second(s) is : $S")