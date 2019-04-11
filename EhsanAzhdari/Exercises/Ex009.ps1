Clear-Host
$N = Read-Host "Please Your Enter Number"
$S = 0
for($i=2 ; $i -le $N ; $i=$i+2){
    $S = $S + (1/$i)
}
Write-Host("Result Is : $S")