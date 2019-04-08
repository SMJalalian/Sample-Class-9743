$sum = 0
$num[0..99] = 0
for ($i=0; $i -lt 10;$i++)
{
    [int]$num[$i] = Read-Host
    $sum += $num[$i]
    Write-Host($num[$i])
}
Write-Host("Sum" + $sum)