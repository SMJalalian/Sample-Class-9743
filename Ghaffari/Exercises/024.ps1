# Where are we in Year ? (We have Day and Month)
Clear-Host
[int]$Day = Read-Host "Enter the Day on Month "
[int]$Mon = Read-Host "Enter the Month of Year "
if ($Mon -le 6) {$Today = ($Mon * 31) + $Day}
    else {$Today = ($Mon * 30) + 186 + $Day}
"Today is " + $Today