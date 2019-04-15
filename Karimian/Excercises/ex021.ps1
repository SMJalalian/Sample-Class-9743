clear-host
[int]$n = Read-Host("Please enter number")
$fac=1
$sum=0
for( $i=1 ; $i-le$n ; $i++ )
{
    for( $j=2; $j -le $i ; $j++ )
    {
        $fac*=$j 
    }
#    write-Host("factorial of result is $fac")
    $sum+=$fac
    $fac=1;
}
$sum
