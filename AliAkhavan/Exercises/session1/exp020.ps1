[int] $n = Read-Host "please enter N value"
[int]$s = 0


for ($i = 2; $i -lt $n - 1 ;$i = $i+1) 
    {
        [int] $temp = $n / $i
        [int] $r = $n - $i * $temp
        if ($r -eq 0) {
            Write-Host "addad $n aval nist"
            break   
        }
            else {
                Write-Host "addad $n aval ast"
                break
            }
        
        
    }
    