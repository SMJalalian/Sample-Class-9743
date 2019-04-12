Clear-Host
[int]$N = Read-Host "Please Enter Number"
$SUM = 0
for ($i = 1; $i -le $N; $i++) {
    $Fact = 1
    for ($j = 1; $j -le $i; $j++) {
         $Fact = $Fact * $j
    }
    $SUM = $SUM + $Fact
}
Write-Host("$SUM")