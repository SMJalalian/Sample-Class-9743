[int] $N = Read-Host "Enter Your Number"
$Divisors = @()
for($Counter = 4; $Counter -le $N / 2; $Counter++){
    if($N % $Counter -eq 0 -and $Counter % 4 -eq 0){
        $Divisors += $Counter
    }
}
if($N % 4 -eq 0){
    $Divisors += $N
}
if($Divisors.Count -gt 0){
    Write-Host("Divisors of $N Which Are Multiple of 4:")
    $Divisors
} else{
    Write-Host("$N Has not Any Divisor Which Divided by 4!")
}

