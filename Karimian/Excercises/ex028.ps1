Clear-Host
$max=$0
[int]$n =Read-Host("Please enter n")
for ($i = 1; $i -le $n; $i++) {
    [int]$a =Read-Host("Please enter numer")
    if ($a -gt $max) {
        $max=$a    
    }
}
Write-Host("max is $max")
