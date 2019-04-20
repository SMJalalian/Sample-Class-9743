Clear-Host
[int]$s = 0
[int]$a = Read-Host "adad khod ra vard konid "
for ($j = 2; $j -lt $a ; $j++) {
    $b = $i/($i+1)
    $s = $s + $b
}
Write-Host "majmo kol $s" 