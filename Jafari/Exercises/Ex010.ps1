[int] $N = Read-Host "Enter Your Number"
[float] $P = 0
$Counter = 1
while ($Counter -le $N) {
    $P += ($Counter / [math]::Pow(3, $Counter))
    $Counter++
}
Write-Host("The Summation of 1/3^1 + 2/3^2 + ... + N/3^N Is: " + $P)