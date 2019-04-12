for ([int]$n=2; $i -le 6; $n=$n+2)
{
     $i = Read-Host "please enter i value"
     $j = Read-Host "please enter j value"
     $k = Read-Host "please enter k value"
     $t = $i + $j + $k
     Write-Host $t
     $n = $n + 2
}

