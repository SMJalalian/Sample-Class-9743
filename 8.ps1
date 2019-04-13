------8-----
[int]$n=Read-Host "adad vorodi=" 
[float]$s=0
[float]$i=1
while ($i -le $n) {
    [float]$s=$s+1/$i
     $i=$i+1 
}
Write-Host "jame"$s