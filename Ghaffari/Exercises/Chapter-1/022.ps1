Clear-Host
$N = Read-Host "Enter number N "
for ($j = $S = 1; $j -lt $N; $j++) {
    for ($i = $fac = 1; $i -le $j; $fac = $fac * $i++) {}
    "Fact "+$j+" = "+$fac
    $S += $fac
}
"Sum = "+$S