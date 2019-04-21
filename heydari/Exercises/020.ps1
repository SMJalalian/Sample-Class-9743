clear-Host
[int] $s = 1
$j = Read-Host "adad khod ra vard konid"
for ($i = 2 ; $i -le $j; $i++) {
    $s = $s * $i
}
Write-Host "Factorial adad $s : "