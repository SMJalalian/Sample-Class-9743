Clear-host
$j = 0
[int] $sum = 0
$a = Read-Host "Please Enter a Positive Number Greater Than Zero"
for ($i = 1; $i -le $a; $i++) {
    if ($a % $i -eq 0) {
        write-host $i
        $Sum += $i
        $j++
    }
}
        write-host "Sum of Divisors is: $sum"
        write-host "Count of Divisors is: $j"
