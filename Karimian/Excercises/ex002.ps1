Clear-Host
[int]$a=Read-Host("Please enter number1")
[int]$b=Read-Host("Please enter number2")
[int]$c=Read-Host("Please enter number3")
$s=$a + $b + $c
#$s
$ave=$s/3
Write-Host("average is $ave")
