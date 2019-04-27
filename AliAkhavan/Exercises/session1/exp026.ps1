[int]$N = Read-Host "Please Enter N Value"
[int]$w = 0
[int]$S = 0

while ($N -gt 0) 
{
    $temp = [math]::Floor($N / 10) 
    $R = $N - 10 * $temp
    $S = $S + $R
    $w = $w + 1
    $N = $N / 10
}
    Write-Host "SUM of numbers : $S "
    Write-Host "SUM of numbers : $w "