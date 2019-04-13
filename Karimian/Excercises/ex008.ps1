Clear-Host
[int]$n = read-Host("Please enter number")
$sum=0;
for($i=1 ; $i -le $n ; $i++)
{
    $sum = (1/$i) + $sum
}
$sum