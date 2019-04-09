Clear-Host
$a = read-host "Please Write 1st Number"
$b = read-host "Please Write 2nd Number"
$c = read-host "Please Write 3rd Number"
if ( ($a -le $b+$c) -and ($b -le $a+$c) -and ($c -le $a+$b) ) {
    write-host "These Number can Make a Triangle"
}
else {
    write-host "These Number cannot Make a Triangle"
}