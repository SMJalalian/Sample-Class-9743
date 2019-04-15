Clear-Host
[int]$n = read-Host("Please enter number")
$sum=0;
for($i=2 ; $i -le $n ; $i=$i+2)
{
    $sum = (1/$i) + $sum
}
$sum