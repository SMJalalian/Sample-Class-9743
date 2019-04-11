[int] $N = Read-Host "Enter Your Number"
$S = 0
for($i = 1; $i -lt $N; $i++){
    $S += [math]::pow(-1, $i + 1) * ($i / ($i + 1))
}
Write-Host ("The Summation of 1/2 - 2/3 + 3/4 - ... + N-1/N Is: $S")