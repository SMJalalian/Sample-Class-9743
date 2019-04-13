$a = Read-Host "Enter A :"
$b = Read-Host "Enter B :"
$c = Read-Host "Enter C :"


if ($a -gt $c -and $a -gt $b) {

    Write-Host "A is : $a "
    
}
elseif ($c -gt $a -and $a -gt $b) {

    Write-Host " C is : $c "
    
} 
elseif($b -gt $a -and $b -gt $c) {

    Write-Host " B is : $b "
   
}
elseif($c -gt $b -and $b -gt $a) {

    Write-Host " C is the Biggest number: $c "
   
}
