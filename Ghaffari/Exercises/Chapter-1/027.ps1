# Return Digits of Number
Clear-Host
$Sum = 0
$N = Read-Host "Enter Number N "
while ($N -ge 10) {
    $R = $N % 10
    $R
    $Sum += $R
    $N = [math]::Floor($N/10)
}
$Sum

