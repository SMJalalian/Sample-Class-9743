$T = Read-Host "Enter Seconds"
$H =  [math]::Floor($T/3600)    #Hours
$R =  $T - ($H*3600)    #Remained Seconds
$M =  [math]::Floor($R/60)    #Minutes
$S = $R - ($M*60)   #Seconds
Write-Host("Your Time is: " + $H + " Hour(s) and " + $M + " Minute(s) and " + $S + " Second(s).")