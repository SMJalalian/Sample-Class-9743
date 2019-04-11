Clear-host
[int] $sum = 0
[int] $a = Read-Host ("Please Enter a Positive Number Greater Than Zero")
for ($i = 1; $i -lt $a; $i++) {
    if ($a % $i -eq 0) {
        $Sum += $i
        }        
}
if ($sum -eq $a) {
    Write-Host "$a is a Perfect number"
}