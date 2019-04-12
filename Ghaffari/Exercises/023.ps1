# Where are we in Year ? (We have Day and Month)
Clear-Host
$Day = Read-Host "Enter the Day on Month "
$Mon = Read-Host "Enter the Month of Year "
if ($Mon -le 6) {$Today = ($Mon * 31) + $Day}
    else {$Today = ($Mon * 30) + 186 + $Day}
"Today is " + $Today