clear-Host
[int]$s = Read-Host "adad aval ra vard konid"
[int]$j = Read-Host "adad dovam ra vard konid"
if ($s -le $j) {
    Write-Host "$s az $j kochaktar ast"
    
}else  {
    Write-Host "$s az $j bozargtar ast" 
 }