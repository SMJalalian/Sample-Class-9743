clear-host
$Sum = 0
$N = Read-Host "Please Write the Number"
for($i=1;$i -le $N;$i++){
    [double]$Sum=$Sum+(1/$i)
}
Write-host "The Sum is $Sum"