[int] $N = Read-Host "Enter Your Number"
[float] $S = 0
$Counter = 1
while ($Counter -le $N) {
    $S += (1 / $Counter)
    $Counter++
}
Write-Host("The Summation of 1 + 1/2 + ... + 1/N Is: " + $S)