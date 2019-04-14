Clear-Host
[int]$n = read-host "Please Enter a Number"
$sum = 0
$i = 0
do {
    $CurrentDigit = $n%10
    if ($CurrentDigit -eq 1) {
        $sum += [math]::pow(2,$i)
    }
    $n = [Math]::Floor($n/10)
    $i++
} while ( $n -gt 0 )
$sum

