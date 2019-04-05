clear-host
$Sum = 0
for($i=1000;$i -Le 2000;$i+=2)
{
    $i
    $Sum+=$i
}
write-host " The Sum of Even Numbers is $Sum"