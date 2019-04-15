Clear-Host
[int]$N = Read-Host "Please Enter Number"
[int]$Count = 0
[int]$Sum = 0
while ($N -gt 0) {
    $R = $N - 10 * ($N % 10)
    $Sum = $Sum + $R
    $Count ++
    $N = $N / 10
}
Write-Host("SUM is : $SUM `nCount is : $Count")