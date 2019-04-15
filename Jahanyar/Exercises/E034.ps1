Clear-Host
[int]$a = Read-Host "Please Enter 1st Number"
[int]$b = Read-Host "Please Enter 2nd Nember"
$a = $a + $b
$b = $a - $b
$a = $a - $b
Write-Host "A is Equal $a"
Write-Host "B is Equal $b"