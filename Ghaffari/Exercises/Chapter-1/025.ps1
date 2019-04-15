# Sum = 1/2 - 2/3 + 3/4 - 4/5 + ... + (n-1)/n
Clear-Host
$OP = 1
do {
    [int]$N = Read-Host("Enter the Positive Integer Num")    
} while (!($N -gt 0))

$sum = 0
For($i =1; $i -le $N; $i++){
    $Sum += $OP*($i / ($i+1))
    $OP *= -1
}
"Sum = " + $sum  