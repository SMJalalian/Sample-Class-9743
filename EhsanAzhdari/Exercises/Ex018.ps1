Clear-Host
$SUM = 0
$Count = 0
[int]$N = Read-Host "Please Enter Number"
for ($i = 1; $i -le $N; $i++) {
    if ($N % $i -eq 0) {
        Write-Host("$i")
        $SUM = $SUM + $i
        $Count = $Count + 1
    }
}
Write-Host("SUM is : $SUM")
Write-Host("Count is : $Count")