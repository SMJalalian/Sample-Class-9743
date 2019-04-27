Clear-Host
[int]$x = read-Host("Please enter number")
[int]$y = read-Host("Please enter number")

$x = $x + $y
$y = $x - $y 
$x = $x - $y

$x
$y
