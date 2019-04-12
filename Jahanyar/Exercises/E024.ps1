Clear-Host
$sum = 0
$a = Read-Host "Please Enter a positive even Number "
for ($i = 2; $i -lt $a ; $i++) {
    $sum += $i/($i+1)
}
$sum