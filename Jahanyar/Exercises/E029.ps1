Clear-Host
$m = read-host "Please Enter Numbers of Staff"
[int]$hs = Read-Host "Please Write Wage Per Hours"
[int64]$s = 0
for ($i = 1; $i -le $m; $i++) {
    $n = Read-Host "Please Write Name of Staff"
    [int] $h = read-host "Please Enter Total Hours"
    if ($h -le 50) {
        $s = ($h * $hs)
    }
    else {
        $s = ($hs * 50) + ( $h - 50 ) * 3/2 * $hs
       }
       Write-Host "Total of MR/MRS $n is $s"
}

