clear-host
[string]$n = Read-Host("Please enter number")
$length = $n.Length
$t = 0
$j = 0
$k = 0
for($i=$length-1 ; $i -ge 0 ; $i--)
{

    $m=$n.Substring( $i ,1)
    [int]$t = $m    
    $k += $t * [math]::Pow(2,$j)
    $j++
}
$k