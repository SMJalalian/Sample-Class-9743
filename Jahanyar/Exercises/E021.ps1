clear-host
[int] $sum = 0
$a = Read-host "Please Enter a Positive Number Greater Than Zero"
for ($i = 1; $i -le $a; $i++) {
    $f = 1;
    for ($j = 1; $j -le $i; $j++) {
        $f *= $j
    }
    $sum += $f
}
write-host "$sum"