clear-Host
[int]$a=Read-Host "Sanie kol"
[int]$h = $a/3600
Write-Host "Saat" $h
[int]$b = $a-$h*3600
[int]$m = $b/60
Write-Host "Daghighe" $m
[int]$s = $b-$m*60
Write-Host "Sanie" $s