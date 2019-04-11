$I = 1000
$S = 0
Write-Host("The Even Numbers Between 1000 and 2000 Are:")
while($I -lt 2001){
    $S += $I
    $I
    $I +=2
}
Write-Host("The Summation of These Numbers Is: " + $S)