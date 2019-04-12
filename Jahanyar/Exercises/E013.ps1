Clear-Host
$sum = 0 
$Array = @()
for ($i = 0; $i -le 3; $i++) 
{
    $Array += Read-Host ("Pleaes Enter a Number")
    $sum += $Array[$i]
}
$Array
write-host " The Sum of Them is $Sum"
