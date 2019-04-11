clear-host
$sum = 0
$num = @()
for ($i=1; $i -eq 10;$i++)
{
    [int]$num[$i] = Read-Host -prompt 'Enter a number'
    $sum += $num[$i]
    Write-Host($num[$i])
}
Write-Host("Sum" + $sum)