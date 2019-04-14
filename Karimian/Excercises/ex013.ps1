clear-host
$sum=0;
for( $i=1 ; $i -le 2 ; $i++)
#for( $i=1 ; $i -le 100 ; $i++)
{
    [int]$n = read-host("Please enter number")
    $sum = $sum + $n
    $n   
}
 $sum