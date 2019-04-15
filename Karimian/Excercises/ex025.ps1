clear-host
[int]$n = Read-Host("Please enter number 1")
while($n -le 0)
{
    $n = Read-Host("Please try egain")
}
[int]$m = Read-Host("Please enter number 2")
while($m -le 0)
{
    $m = Read-Host("Please try egain")
}
if($m -gt $n)
{
    $max=$m
    $min=$n
}
else
{
    $max=$n
    $min=$m
}
while($max%$min -ne 0 )
{
    $Tmax=$max
    $max=$min
    $min=$Tmax%$min    
}
$BMM=$min
$KMM=$n*$m/$BMM
write-Host("BMM between $n and $m is $BMM")
write-Host("KMM between $n and $m is $KMM")


