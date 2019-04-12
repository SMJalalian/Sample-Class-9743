Clear-Host

for ($N = 2; $N -le 6; $N+=2) {
    $i = Read-Host "Enter number i"
    $j = Read-Host "Enter number j"
    $k = Read-Host "Enter number k"
    $t = $i + $j + $k
    write-host("t = " + $t)
    Write-Host("N = " + $N)    
}
Write-Host("N = " + $N)

