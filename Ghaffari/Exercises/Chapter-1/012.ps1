$sum = 0
$num[1..100]
for ($i=1; $i -lt 10;$i++)
{
    [int]$num[$i] = Read-Host
    $sum += $num[$i]
    Write-Host($num[$i])
}
Write-Host("Sum" + $sum)