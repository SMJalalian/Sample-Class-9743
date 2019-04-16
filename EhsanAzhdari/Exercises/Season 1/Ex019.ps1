Clear-Host
$SUM = 0
[int]$N = Read-Host "Please Enter Number"
for ($i = 1; $i -lt $N; $i++) {
    if ($N % $i -eq 0) {
        $SUM = $SUM + $i
    }
}
if ($N -eq $Sum) {
    Write-Host("Number $N is KAMEL") 
}
else {
    Write-Host("Number $N is NOT KAMEL") 
}