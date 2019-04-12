[int] $N = Read-Host "Enter Your Number"
$S = 0
$P = 1
for ($i = 1; $i -le $N; $i++) {
    for ($j = 1; $j -le $i; $j++) {
        $P = $P * $j
    }
    $S += $P
    $P = 1
}
Write-Host("Summation of 1! + 2! + ... +$N! Is: $S")