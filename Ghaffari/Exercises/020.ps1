Clear-Host
$N = Read-Host "Enter number N "
$counter = 2
for ($i = 2; $i -lt $N; $i++) {
    if (!($N % $i)) {$counter++}
}
if ($counter -eq 2) {$N.ToString()+" is a Prime Number"}
    else {$N.ToString()+" is not Prime Number"}