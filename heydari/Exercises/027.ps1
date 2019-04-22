Clear-Host
[int]$a = read-host "adad ra vard konid"
[int]$s = 0
[int]$i = 0
while ($a -gt 0) {
    
    $b=$a-10*$a % 10
    $s=$s+$b*[System.Math]::pow(2,$i)
    $a=$a/10
}
Write-Host "adad dar mabna 10 :$s "  

