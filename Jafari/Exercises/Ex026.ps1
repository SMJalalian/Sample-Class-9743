[int] $N = Read-Host "Enter Your Number"
$Output = "$N Has "
$Digits = 0
$Sum = 0
while ($N -gt 0) {
    $Sum += $N % 10
    $Digits ++
    $N = [math]::Floor($N / 10)  
}
$Output += "$Digits Digit(s), And Summation of Them Is: $SUM"
$Output