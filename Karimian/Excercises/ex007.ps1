Clear-Host
$sum=0;
for ($i=1000 ; $i -le 2000 ; $i++ )
{
    if ($i % 2  -eq 0)
    {
        $i
        $sum=$i+$sum
    }
}
Write-Host("sum of number is $sum")