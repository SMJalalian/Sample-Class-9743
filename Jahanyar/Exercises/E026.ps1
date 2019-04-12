Clear-Host
[int]$n = read-host "Please Enter a Number"
$DigitSum = 0
$i = 0
do {
    $i++
    $DigitSum += $n%10
    $n = [Math]::Floor($n/10)
} while ( $n -gt 0 )
Write-Host("Sum of digits is : $DigitSum")
Write-Host("This number has $i digit(s)")

