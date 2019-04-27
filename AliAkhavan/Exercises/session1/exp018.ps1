[int] $n = Read-Host "please enter N value"
[int]$s = 0
[int]$w=0


for ($i = 1; $i -le $n;$i = $i+1) 
    {
        [int] $temp = $n / $i
        [int] $r = $n - $i * $temp
        if ($r -eq 0) {
            Write-Host $i
            $w = $w + 1
            $s = $s + 1   
        }
    }
    Write-Host $s
            Write-Host $w
            
    