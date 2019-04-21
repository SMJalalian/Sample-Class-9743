clear-Host
[int] $j = 0
[int] $s = 0
$z = Read-Host "adad ra vard konid"
for ($i = 1; $i -le $z; $i++) {
    $x = $z % $i
        if ( $x -eq 0) {
                $S = $s + $i
        $j++
    }
}
       
        write-host "tedad maghsom alay ha : $j"
        write-host "jame maghsom alay ha: $s"
