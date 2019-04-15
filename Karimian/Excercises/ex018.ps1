clear-host
[int]$n = Read-Host("Please enter number")
$sum=0
$j=0
for( $i=1 ; $i -le $n/2 ; $i++ )
{
    if ( $n%$i -eq 0 )
    {
        $i
        $j++
        $sum+=$i
    }    
}
write-Host("number of result is $j")
write-Host("sum of result is $sum")
