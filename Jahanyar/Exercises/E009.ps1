clear-host
$Sum = 0
$N = Read-Host "Please Write a Number"
For($i=2;$i -le $N;$i=$i+2)
{
    $Sum = $Sum + (1/$i)
}
Write-host "The Sum is $Sum"