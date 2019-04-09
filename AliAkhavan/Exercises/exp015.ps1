$a = Read-Host "please enter first nubmer"
$b = Read-Host "please enter second number"

if ($a -gt $b) {
    Write-Host "A is the bigger number"
    Write-Host "B is the smaller number"
    break
}
elseif ($a -lt $b) {
    Write-Host "B is the bigger number"
    Write-Host "A is the smaller number"
    break
} 
elseif($a -eq $b) {
    Write-Host "the numbers are equal Enter again"
    $a = Read-Host "please enter first nubmer"
    $b = Read-Host "please enter second number"
}
