clear-Host
[int]$i=0
[int]$j=0
for  ($i=0 ; $i -le 5 ; $i++) {
   
   [int]$s = Read-Host "adad ra vard konid:"
   [int]$j = $j + $s

}
Write-Host "jame kol adad" $j