$a = read-host "Please Write 1st Number"
$b = read-host "Please Write 2nd Number"
$c = read-host "Please Write 3rd Number"
if ( ($a -le $b+$c) -and ($b -le $a+$c) -and ($c -le $a+$b) ) {
    
}