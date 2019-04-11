[int] $n = Read-Host "please enter N value"
[int]$p = 1


for ($i = 1; $i -le $n - 1 ;$i = $i+1) 
    {
        $p = $p * $i
        Write-Host "N fact is $p"
       
    }
    