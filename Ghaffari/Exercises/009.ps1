Clear-Host
[int]$N = Read-Host("Enter the Integer Num")
$sum = 0
For($i =2; $i -le $N; $i+= 2){

$sum += 1 / $i
}

$sum