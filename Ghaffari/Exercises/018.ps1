Clear-Host
$N = Read-Host "Enter number N "
$counter = 2
$sum = 1 + $N
"1"
for ($i = 2; $i -lt $N; $i++) {
    if (!($N % $i)) { $i; $counter++; $sum+= $i}
}
$N
"Number of Divisors = " + $counter
"Summer of Divisors = " + $sum