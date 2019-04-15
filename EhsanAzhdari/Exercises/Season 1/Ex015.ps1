do {
    Clear-Host
    [int]$A = Read-Host "Please Enter First Number"
    [int]$B = Read-Host "Please Enter Second Number"
    if ($A -lt $B) {
        Write-Host(" Max is : $B `n Min is : $A")
    }
    if ($B -lt $A) {
        Write-Host(" Max is : $A `n Min is : $B")
    }
} while ($A -eq $B)