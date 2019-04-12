[int] $s=0

for ($i = 1; $i -le 10; $i = $i+1 ) 
    {
        [int] $a = Read-Host "please enter N$i value"
        Write-Host $a  
$s=$s + $a
      

    }

    Write-Host "yOUR SUM IS:" $s