clear-Host
[int]$s = Read-Host "adad aval ra vard konid"
[int]$j = Read-Host "adad dovam ra vard konid"
[int]$i = Read-Host "adad sevom ra vard konid"

if ($s -gt $j -and $s -gt $i) {
    Write-Host "$s bozorgtarin adad ast"
}
if ($s -gt $j -and $i -gt $s) {
    Write-Host "$i bozorgtarin adad ast"
 }
if ($j -gt $s -and $j -gt $i) {
     Write-Host "$j bozorgtarin adad ast"
}
if ($j -gt $s -and $i -gt $j) {
    Write-Host "$i bozorgtarin adad ast"
}  
