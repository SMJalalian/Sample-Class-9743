Clear-Host
$N = Read-Host "Please Enter Your Number"
$P=0
for($i=1 ; $i -le $N ; $i++){
    $P = $P + $i / [math]::pow(3,$i)
    }
Write-Host("Result Is : $P")