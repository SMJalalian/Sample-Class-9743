# Binary to Decimal
Clear-Host
$Sum = 0
$S = Read-Host "Enter Binary Number "
for ($i = 0; $i -lt $S.Length) {
    $Sum += [int]$S[$i] * ([math]::Pow(2,($S.Length - $i)))  
}