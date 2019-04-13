$i = 1
$s = 0

do{
    $a = Read-Host "Enter Your Number:"
    $s = $s + $a
    $i = $i + 1
    Write-Host "Your last entered Number is:" $a
    Write-Host "Count of your Numbers is:" $i--
    Write-Host "Sum of your Numbers is:" $s
}
while ($i -le 100) 

    
    
