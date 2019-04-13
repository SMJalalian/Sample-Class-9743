Clear-Host
$M = Read-Host "Please Enter First Number"
$N = Read-Host "Please Enter Second Number"
if ($M -lt $N) {
    $t = $N ; $N = $M ; $M = $t
}
$A = $M ; $B = $N
while ($R -ne 0) {
    $R = $M - $N * $M % $N
    $M = $N
    $N = $R
}
Write-Host("BMM is $N")
$KMM = ($A * $B) / $N
Write-Host("KMM is $KMM")


