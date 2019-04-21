clear-Host
[int]$a=Read-Host "adad vorodi 1="
[int]$b=Read-Host "adad vorodi 2="
[int]$c=Read-Host "adad vorodi 3="
[int]$d = [System.Math]::Pow($a,2)
[int]$e = [System.Math]::Pow($b,2)
[int]$f = [System.Math]::Pow($c,2)

if ($d -le $e +$f) {
    if ($e -le $d + $f) {
        if ($f -le $d + $e) {
            Write-Host "mitavan mosalas sakht"
        
        }
        
    }

    else {

       Write-Host "nimitavan mosalas sakht"
    }
    
}