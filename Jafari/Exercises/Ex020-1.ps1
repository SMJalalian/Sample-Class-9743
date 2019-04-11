[int] $N = Read-Host "Enter Your Number"
$P = 1
for ($i = 1; $i -le $N; $i++) {
    $P = $P * $i
}
Write-Host("Factorial of $N Is: $P")