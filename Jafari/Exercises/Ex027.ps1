[int] $N = Read-Host "Enter Your Number In Base 2"
$Output = "Decimal of $N Is: "
$Decimal = 0
$Digits = 0
$Flag = 0
while ($N -gt 0) {
    if($N % 10 -ge 2){
        $Flag = 1       
    }
    $Decimal += ($N % 10) * [Math]::pow(2, $Digits)
    $Digits ++
    $N = [math]::Floor($N / 10)  
}
if($Flag -eq 1){
    $Output = "Ooh! Your Number Isn't In Base 2!"
    $Output
} else {
    $Output += "$Decimal"
    $Output
}