clear-host
[int]$n = Read-Host("Please enter number")
$sum=0
$j=0
$m=@()

for( $i=1 ; $i -le $n/2 ; $i++ )
{
    if ( $n%$i -eq 0 -and $i%4 -eq 0 )
    {
        $m += $i
    }    
}
$j=$m.count
foreach ($item in $m) {
    $sum+=$item
}

$m
write-Host("number of result is $j")
write-Host("sum of result is $sum")