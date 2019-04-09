[int] $n = Read-Host "please enter N value"
[int]$s = 0


for ($i = 1; $i -le $n - 1 ;$i = $i+1) 
    {
        [int] $temp = $n / $i
        [int] $r = $n - $i * $temp
        if ($r -eq 0) {
            $s = $s + $i   
        }
            
        elseif ($s -eq $n) {
            
        Write-Host "addad $n kamel ast"
        break

        }
            else {
                Write-Host "addad $n kamel nist"
                break
            }
        
        
    }
    