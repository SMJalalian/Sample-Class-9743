Clear-Host
# Year = 31536000s / Month = 2592000s / Week = 604800s / Day = 86400s / Hour = 3600s / Minute = 60s 
[int]$T = Read-Host
if ($T -ge 31536000){ $T -= ($Y = [math]::Floor($T / 31536000))*31536000}
if ($T -ge 2592000) { $T -= ($M = [math]::Floor($T / 2592000))*2592000}
if ($T -ge 604800)  { $T -= ($W = [math]::Floor($T / 604800))*604800}
if ($T -ge 86400)   { $T -= ($D = [math]::Floor($T / 86400))*86400}
if ($T -ge 3600)    { $T -= ($H = [math]::Floor($T / 3600))*3600}
if ($T -ge 60)      { $T -= ($m = [math]::Floor($T / 60))*60}
Write-Host( $Y.ToString() +" "+ $M.ToString() +" "+ $W.ToString() +" "+ $D.ToString() +" "+ $H.ToString() +" "+ $m.ToString() +" "+ $T.ToString())