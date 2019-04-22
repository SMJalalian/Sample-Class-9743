Clear-Host
[int]$a = read-host "tedad adad ra vard konid"
[int]$s = 1
for ($i = 1; $i -le $a; $i++) {
    $b = Read-Host "Please Enter a Number"
    if ($b -gt $s) {
        $s = $b
    }
}
Write-Host "bozorgtarin adad : $s"