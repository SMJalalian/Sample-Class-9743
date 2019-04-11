[int] $N = Read-Host "Enter Your Number"
$Divisors = @()
$SUM = 0
for($Counter = 1; $Counter -le $N; $Counter++){
    if($N % $Counter -eq 0){
        $Divisors += $Counter
        $SUM += $Counter
    }
}
Write-Host("Count of $N Divisors Is " + $Divisors.Count + " Where That Are:")
for ($i = 0; $i -lt $Divisors.Count; $i++) {
    $Divisors.GetValue($i)
}
Write-Host("And The Summation of Them Is: $SUM")