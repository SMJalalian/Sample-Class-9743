Clear-Host
[int]$N = Read-Host("Enter the Integer Num")
$sum = 0
For($i =1; $i -le $N; $i++){
$P = [math]::Pow(3,$i)
$sum += $i / $P

}

$sum