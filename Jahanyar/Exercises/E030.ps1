Clear-Host
$n = read-host "Please Write Name of Your Staff"
$h = read-host "Please Enter Initial Wage"
$e # "e" is extra wage
for ($i = 1; $i -le 50; $i++) {
    if ($h -lt 2500) {
        $s  = ( $h * 1/50) + $h
    }
    if ($h -gt 3500 ) {
        $s  = ( $h * 1/10) + $h
    }
    else {
        $S  = ( $h * 7/100) + $h
    }
}
write-host "Final Wage of Mr/Mrs $n is $S"
