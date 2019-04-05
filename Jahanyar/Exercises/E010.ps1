Clear-Host
$Sum = 0
$N = Read-Host "Please Write a Number"
for($i=1 ; $i -le $N ; $i++){
    $Sum = $Sum + $i / [math]::Pow(3 , $i)
    $Sum
}
Write-host "The Sum is $Sum"