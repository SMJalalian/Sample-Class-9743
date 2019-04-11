[int] $N = Read-Host "Enter Your Number"
$Divisors = @()
for($Counter = 2; $Counter -le $N / 2; $Counter++){
    if($N % $Counter -eq 0){
        $Divisors += $Counter
    }
}
if ($Divisors.Count -lt 1){
    Write-Host("$N Is A Prime Number.")
} else{
    Write-Host("$N Isn't A Prime Number.")
}