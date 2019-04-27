Clear-Host
[int]$a = Read-Host "adad ra vard konid"
[int]$i = 0
[int]$s = 0
while ($a -gt 0) 
{
    $i++
    $j = [math]::Floor($a / 10) 
    $b = $a - 10 * $j
    $S = $S + $b
    $a = $a / 10
}
    Write-Host "majmo argham adad : $S"
    Write-Host "tedad argham adad : $i"