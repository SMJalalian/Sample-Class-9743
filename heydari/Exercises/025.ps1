Clear-Host
[int]$a = Read-Host "adad aval ra vard konid"
[int]$b = Read-Host "adad dovom ra vard konid"
[int]$m = [System.Math]::Min($a , $b)
$j = 1

for ($i = 2; $i -le $m; $i++) {
    $c = $b % $i 
    $d = $a % $i
    if ( $c -eq 0  -and $d -eq 0 ){
        $j = $i
    }
}
$h = ($a * $b) / $j
write-host "BMM : $j"
Write-Host "KMM : $h"
