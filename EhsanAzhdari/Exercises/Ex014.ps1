Clear-Host
[int]$N = 2
while ($N -le 6) {
    [int]$i = Read-Host "Please Enter i"
    [int]$j = Read-Host "Please Enter j"
    [int]$k = Read-Host "Please Enter k"
    [int]$t = 0
    $t = $i + $j + $k
    Write-Host("t = $t")
    $N += 2
}
