[int]$n=Read-Host "adad vorodi=" 
[float]$s=0
[float]$i=1
while ($i -le $n) {
    
    $b = [System.Math]::Pow(3,$i)
    [float]$s=$s+$i/$b
    $i=$i+1
}
Write-Host "jame"$s

