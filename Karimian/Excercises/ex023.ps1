clear-host

$rooz=0;

[int]$m = Read-Host("Please enter month")
while($m -le 0 -or $m -gt 12)
{
    $m = Read-Host("Please try egain")
}

[int]$d = Read-Host("Please enter date")
if($m -ge 1 -and $m -le 6)
{
    while($d -le 0 -or $d -gt 31)
    {
        $d = Read-Host("Please try egain")
    }
}
else
{
    while($d -le 0 -or $d -gt 30)
    {
        $d = Read-Host("Please try egain")
    }
}

for( $i=1 ; $i-lt $m ; $i++)
{
    if($i -ge 1 -and $i -le 6)
    {
        $rooz+=31
    }
    else
    {
        $rooz+=30
    }
}

$rooz += $d
$rooz