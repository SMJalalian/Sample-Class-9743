Clear-Host
[int]$N = Read-Host "Please Enter Number"
if ($N % 2 -eq 0 ) {
    Write-Host("Number is EVEN")
}
else {
    Write-Host("Number is ODD")
}