Clear-Host
$N = Read-Host "Enter Number"
$count = 0
$Sum = 0
for ($i = 4; $i -le $N; $i+=4) {
    if (!($N%$i)) {
        $i
        $count++
        $Sum += $i
    }
}
$Sum