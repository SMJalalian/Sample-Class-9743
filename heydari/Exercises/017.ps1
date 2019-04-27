clear-Host
[int]$s = Read-Host "adad ra vard konid"
$a = $s%2
$r = $s - 2*$a
if ($r -eq 0) {
    Write-Host "adad zoj hast"
    
}else {
    Write-Host "adad fard hast"
}