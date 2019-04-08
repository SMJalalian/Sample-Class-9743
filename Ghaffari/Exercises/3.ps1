Clear-Host
[int]$S = Read-Host "Please enter the Salary "
$B = ( $S / 100 ) * 10
$M = ( $S / 100 ) * 5
$Totaly = $S - $B - $M
$Totaly