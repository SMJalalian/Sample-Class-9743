$a = Read-Host "please enter first nubmer"
$b = Read-Host "please enter second number"
$c = Read-Host "please enter Third nubmer"


if ($a -gt $c -and $a -gt $b) {
    Write-Host "A=$a"
    break
}
elseif ($c -gt $a -and $a -gt $b) {
    Write-Host "C=$c"
    break
} 
elseif($b -gt $a -and $b -gt $c) {
    Write-Host "B=$b"
   break
}
elseif($c -gt $b -and $b -gt $a) {
    Write-Host "C=$c"
   break
}
