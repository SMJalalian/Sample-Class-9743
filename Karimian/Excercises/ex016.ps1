Clear-Host
[int]$a =Read-Host("Please enter numer a")
[int]$b =Read-Host("Please enter numer b")
[int]$c =Read-Host("Please enter numer c")
while ($a -eq $b -and $a -eq $c) {
    [int]$a =Read-Host("Please enter numer a")
    [int]$b =Read-Host("Please enter numer b")   
    [int]$c =Read-Host("Please enter numer c") 
}
$max=$a
if ($b -gt $max) {
    $max=$b    
}
if (($c -gt $max)){
    $max=$c
}
Write-Host("max is $max")
