for($N = 2; $N -le 6; $N += 2){
    [int] $I = Read-Host "Enter the 1st Number"
    [int] $J = Read-Host "Enter the 2nd Number"
    [int] $K = Read-Host "Enter the 3rd Number"
    $T = $I +$J + $K
    Write-Host("SUM Is: $T")
}
Write-Host("The Last Valid N Is: " + ($N - 2) + " And The First Invalid N Is: $N")