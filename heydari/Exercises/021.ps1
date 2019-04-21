Clear-Host
[int] $s = 0
$j = Read-host "adad khod ra vard konid"
for ($i = 1; $i -le $j; $i++) {
    $a = 1;
    for ($k = 1; $k -le $i; $k++) {
        $a =$a * $j
    }
    $s =$s + $a
}
write-host "jame donbale $s"