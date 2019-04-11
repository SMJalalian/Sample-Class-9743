[int] $N = Read-Host "Enter Your Number"
$Divisors = @()
$SUM = 1
for($Counter = 2; $Counter -le $N / 2; $Counter++){
    if($N % $Counter -eq 0){
        $Divisors += $Counter
        $SUM += $Counter
    }
}
if ($SUM -eq $N){
    Write-Host("$N Is A Perfect Number.")
} else{
    Write-Host("$N Isn't A Perfect Number.")
}