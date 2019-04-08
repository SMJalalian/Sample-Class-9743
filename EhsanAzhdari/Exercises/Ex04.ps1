[int]$T = Read-Host
[int]$H = $T / 3600
Write-Host("Hour = $H")
[int]$R = (3600 - $T) - $H
[int]$M = $R / 60
Write-Host("Minutes = $M")
