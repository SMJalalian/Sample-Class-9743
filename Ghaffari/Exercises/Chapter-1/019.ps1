Clear-Host
$N = Read-Host "Enter number N "
$sum = 1
for ($i = 2; $i -lt $N; $i++) {
    if (!($N % $i)) {$sum+= $i}
}
if ($sum -eq $N) {$N.ToString()+" is a Perfect Number"}
    else {$N.ToString()+" is not a Perfect Number"}