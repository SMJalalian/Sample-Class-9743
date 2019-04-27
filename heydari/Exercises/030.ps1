   for ($j = 1; $j -le 1; $j++) {
    $n = Read-Host "name khod ra vard konid "
    [int]$s = Read-Host "mizan hoghogh khod ra vard konid "
    if ($s -le 25000) {
        [int]$a = $s*5/100
    }
    if ($s -gt 35000) {
        [int]$a = $s*10/100 
    }
    else {
        [int]$a =$s*7/100
            }
    [int]$ns = $s + $a
    Write-Host "Name is : $n"
    Write-Host "Hoghogh ebtedaie : $s"
    Write-Host "Mizan afzayesh hoghogh : $a"
    Write-Host "Hoghogh jadid : $ns"
}