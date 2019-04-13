Clear-Host
[int]$a =Read-Host("Please enter numer a")
[int]$b =Read-Host("Please enter numer b")
while ($a -eq $b) {
    [int]$a =Read-Host("Please enter numer a")
    [int]$b =Read-Host("Please enter numer b")    
}
if ($a -gt $b) {
    $max=$a
    $min=$b    
}
else {
    $max=$b
    $min=$a
}
Write-Host("max is $max")
Write-Host("min is $min")
