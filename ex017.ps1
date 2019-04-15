clear-host
[int]$n = Read-Host("Please enter number")
while($n -le 0)
{
    $n = Read-Host("Please try egain")
}

if($n %2 -eq 0)
{
    write-Host("$n is even")
}
else
{
    write-Host("$n is odd")
}
