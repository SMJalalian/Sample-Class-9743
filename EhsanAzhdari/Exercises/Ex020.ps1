Clear-Host
[int]$N = Read-Host "Please Enter Number"
for ($i = 2; $i -lt $N; $i++) {
    if ($N % $i -eq 0) {
        Write-Host("Number $N is NOT AVAL")
        return
    }
}
Write-Host("Number $N is AVAL")