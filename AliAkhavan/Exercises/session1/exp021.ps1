[int] $n = Read-Host "please enter N value"
[int]$s = 0
[int]$t = 1
for ($i = 1; $t -le $t ; $i = $i + 1) 
{
    [int]$p = 1
    [int]$i = 1
    [int]$p = $p * $i
    $i = $i+1
            if ($i -le $t ) 
    {
        [int]$p = $p * $i
        $i = $i+1
    }
    else {
        $s = $s + $p
        $t = $t + 1
         Write-Host $s
    }
}