[int] $N = Read-Host "Enter Your Number"
[float] $S = 0
$Counter = 2
while ($Counter -le $N) {
    $S += (1 / $Counter)
    $Counter += 2
}
if ($N % 2 -ne 0){
    $S += (1 / $N)
}
Write-Host("The Summation of 1/2 + 1/4 + ... + 1/N Is: " + $S)