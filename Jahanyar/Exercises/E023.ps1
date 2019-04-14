Clear-Host
$r = read-host "Please Enter a Day"
$m = read-host "Please Enter a Mounth"
$n = $m-1
[int] $f = ((($n) * 30) + $r)
write-host "This Date is $f in the Year"