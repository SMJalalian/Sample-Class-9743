Clear-Host
$N = Read-Host "Please Enter Your Number"
$S = 0
for($i=1 ; $i -le $N ; $i++){
    $S = $S + (1 / $i)
    }
Write-Host("Result Is : $S")