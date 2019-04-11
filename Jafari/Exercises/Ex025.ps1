[int] $N = Read-Host "Enter The 1st Number"
[int] $M = Read-Host "Enter The 2nd Number"
$N1 = $N
$M1 = $M
$Swap = 1
if($N -gt $M){
    while ($Swap -ne 0) {
        $Swap = $N % $M
        $N = $M
        if($Swap -ne 0){
            $M = $Swap
        }
    }
} else {
    $Swap = $N
    $N = $M
    $M = $Swap
    while ($Swap -ne 0) {
        $Swap = $N % $M
        $N = $M
        if($Swap -ne 0){
            $M = $Swap
        }
    }
}
$LCM = $M
$GCD = $N1 * $M1 / $LCM
Write-Host("The Least Common Multiple of $N1 and $M1 Is: $LCM")
Write-Host("The Greatest Common Divisor of $N1 and $M1 Is: $GCD")