Clear-Host
$sum = 0
[int[]]$ar = @(0)*100
$ar.Count
for ($i = 0; $i -lt $ar.Count; $i++) {
    Write-Host($ar[$i] = Read-Host "Enter number")
    $sum += $ar[$i]
}
Write-Host("Sum = " + $sum)

