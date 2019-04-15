# Find Maximum
Clear-Host
$Max = 0
for ($i = 0; $i -lt 10; $i++) {
    $N = Read-Host "Enter Number "
    if ($N -gt $Max) { $Max = $N } 
}
