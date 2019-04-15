clear-host
[int]$n = Read-Host("Please enter number")
$sum=0
while($n -le 0)
{
    $n = Read-Host("Please try egain")
}
for( $i=1 ; $i -le $n ; $i++ )
{
    $sum += ($i-1) / $i * [math]::pow(-1,$i)     
}
$sum
