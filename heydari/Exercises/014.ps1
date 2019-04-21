clear-Host
[int]$s=0
[int]$j=0
for  ($i=2 ; $i -le 6 ; $i=$i+2) {
   
   [int]$s = Read-Host "adad ra vard konid:"
   [int]$j = $j + $s

}
Write-Host "jame kol adad :" $j