Clear-Host
$i=1
$j=1
$k=1

Write-Host("20: 10: 5:")
Write-Host("------------")
for ($a = 20; $i -le 50; $a+=20) {
    for ($b = 10; $b -le 50; $b+=10) {
        for ($c = 5; $c -le 50; $c+=5) {
            if ( ($a+$b+$c) -eq 50) {
                Write-Host(" $i   $j   $k")
            }
            $k++
        }
        $j++
        $k=1
    }
    $i++
    $j=1
    $k=1
}
