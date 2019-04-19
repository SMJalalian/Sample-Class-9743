Clear-Host
[int]$N = Read-Host "Please Enter Number"
[float]$SUM = 0
[int]$K = 1
for ($i = 1; $i -lt $N; $i++) {
    $SUM = $SUM + ( $K * ($i/($i+1)) )
    $K = $K * -1
}
Write-Host("SUM is : $SUM")