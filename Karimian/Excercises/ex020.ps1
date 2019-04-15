clear-host
[int]$n = Read-Host("Please enter number")
$fac=1;
for( $i=2; $i -le $n ; $i++ )
{
    $fac*=$i 
}
$fac
