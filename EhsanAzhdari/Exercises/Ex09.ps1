$N = Read-Host
for($i=2 ; $i -le $N ; $i=$i+2){
    $S = $S + (1/$i)
}
Write-Host($S)