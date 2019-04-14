# Return (B.M.M) & (K.M.M) of M and N
Clear-Host
$Sum = 0
$N = Read-Host "Enter Number N "
if ($N -ge 10) {$N = $N / 10}
while ($N -ge 10) {
    $R = $N % 10
    $R
    $Sum += $R
    $N = [math]::Floor($N/10)
}
$Sum

