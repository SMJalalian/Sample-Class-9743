clear-Host
[int] $s = 0
[int] $j = Read-Host "adad khod ra vard konid"
for ($i = 1; $i -lt $a; $i++) {
    $x = $j % $i
    if ( $x -eq 0) {
        $s= $s + $i
        }        
}
if ($s -eq $j) {
    Write-Host "adad $j Tam hast"
}else {
    Write-Host "adad $j Tam nist"
}