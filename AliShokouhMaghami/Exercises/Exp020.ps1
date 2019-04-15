$N = Read-Host "Enter N number"
$i = 2
do{
[int]$r = ($n -$r) * ($n / $i)
if($r = 0){
    Write-Host "N is NOT First Number"
}}while ($i -lt $n)
$i += 1
Write-Host "N is First Namber"


