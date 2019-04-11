Clear-Host
[int64] $f = 1
$a = Read-Host "Please Enter a Positive Number Greater than Zero"
for ($i = 2; $i -le $a; $i++) {
    $f *= $i
}
Write-Host "Factorial is $f "