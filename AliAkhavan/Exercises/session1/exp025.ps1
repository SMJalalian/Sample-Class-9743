$M = Read-Host "Please Enter First Number"
$N = Read-Host "Please Enter Second Number"
for ($i = 0; $i -lt 10; $i++) {
    
}
if ($M -lt $N) {
    $t = $N 
    $N = $M
    $M = $t
}
$A = $M
$B = $N
$R = $M - $N * $M % $N
if ($R -eq 0) 
    {
        Write-Host("ب.م.م $N ")
    $KMM = ($A * $B) / $N
        Write-Host("ک.م.م $KMM ")
    break
    }
   else {
    $M = $N
    $N = $R
    $R = $M - $N * $M % $N
    Write-Host("ب.م.م $N ")
    $KMM = ($A * $B) / $N
        Write-Host("ک.م.م $KMM ")
    break
   }
    