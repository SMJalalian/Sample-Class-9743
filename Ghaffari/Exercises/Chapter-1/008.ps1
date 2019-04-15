Clear-Host
[int]$N = Read-Host("Enter the Integer Num")
$sum = 0
For($i =1; $i -le $N; $i++){

$sum += 1 / $i
}

$sum