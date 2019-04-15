Clear-Host
[int]$T = Read-Host "Please Enter Second"
[int]$H = [math]::Floor( $T / 3600 )
Write-Host("Hours = $H")
[int]$R = $T - (3600 * $H)
[int]$M = [math]::Floor( $R / 60 ) 
Write-Host("Minutes = $M")
$S = $R - ( $M * 60 )
Write-Host("Seconds : $S")