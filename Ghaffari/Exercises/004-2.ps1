Clear-Host
# Year = 31536000s / Month = 2592000s / Week = 604800s / Day = 86400s / Hour = 3600s / Minute = 60s 
[int]$T = Read-Host
if ($T -ge 31536000){ $Y = [math]::Floor($T / 31536000);    $T -= ($Y*31536000)}
if ($T -ge 2592000) { $M = [math]::Floor($T / 2592000);     $T -= ($M*2592000)}
if ($T -ge 604800)  { $W = [math]::Floor($T / 604800);      $T -= ($W*604800)}
if ($T -ge 86400)   { $D = [math]::Floor($T / 86400);       $T -= ($D*86400)}
if ($T -ge 3600)    { $H = [math]::Floor($T / 3600);        $T -= ($H*3600)}
if ($T -ge 60)      { $m = [math]::Floor($T / 60);          $T -= ($m*60)}
Write-Host( $Y.ToString() +" "+ $M.ToString() +" "+ $W.ToString() +" "+ $D.ToString() +" "+ $H.ToString() +" "+ $m.ToString() +" "+ $T.ToString())