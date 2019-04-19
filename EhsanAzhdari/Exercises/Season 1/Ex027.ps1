Clear-Host
[int]$N = Read-Host "Please Enter Number"
$S = 0
$i = 0
while ($N -gt 0) {
    $R = $N - 10 * $N % 10
    $S = $S + $R * [math]::pow(2,$i)
    $N = $N / 10
}
Write-Host("Number is : $S")