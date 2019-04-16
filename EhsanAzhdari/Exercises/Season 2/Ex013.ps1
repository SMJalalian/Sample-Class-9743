Clear-Host
[int]$X = Read-Host "Please Enter Number 1"
[int]$Y = Read-Host "Please Enter Number 1"
$X = $X + $Y
$Y = $X - $Y
$X = $X - $Y
Write-Host("Number 1 is : $X`nNumber 2 is : $Y")