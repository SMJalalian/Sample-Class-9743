[int]$N = Read-Host "Please Enter N value"
[float]$S = 0
[int]$K = 1

for ($i = 1; $i -lt $N; $i++)
 {
    $S = $S + ( $K * ($i/($i+1)) )
    $K = $K * -1
}

Write-Host("the sum of given numbers is : $S ")