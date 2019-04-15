clear-host
[int]$n = Read-Host("Please enter number")
$sum=0
$cntr=0
while( $n -gt 10 )
{
    $sum += $n % 10
    $n = [math]::Floor( $n / 10 )
    $cntr++
}
$sum += $n
$cntr ++
write-Host("majmoo argham is $sum")
write-Host("tedad argham is $cntr")
 