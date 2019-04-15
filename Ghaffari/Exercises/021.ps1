Clear-Host
$N = Read-Host "Enter number N "
$fac = 1
for ($i = 2; $i -le $N; $i++) {
    $fac = $fac * $i 
}
$N.ToString() + "! = " + $fac.ToString()