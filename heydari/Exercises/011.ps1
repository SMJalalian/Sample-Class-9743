clear-Host
[int]$a=Read-Host "adad vorodi 1="
[int]$b=Read-Host "adad vorodi 2="
[int]$c=Read-Host "adad vorodi 3="
if ($a -le $b +$c) {
    if ($b -le $a + $c) {
        if ($c -le $a + $b) {
            Write-Host "mitavan mosalas sakht"
        }  
    } 
    else {
        Write-Host "nimitavan mosalas sakht"
    }  
}
