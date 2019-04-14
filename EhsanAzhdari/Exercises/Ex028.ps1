Clear-Host
$N = Read-Host "Please Enter Number"
$MAX = $N
while ($N -ne 0) {
    $N = Read-Host "Please Enter Number"
    if ($MAX -lt $N) {
        $MAX = $N
    }
}
Write-Host("MAX is $MAX")