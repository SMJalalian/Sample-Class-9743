Clear-Host
[int]$A = Read-Host "Please Enter First Number"
[int]$B = Read-Host "Please Enter Second Number"
[int]$C = Read-Host "Please Enter Third Number"
if ($A -gt $B -and $A -gt $C) {
    Write-Host("Max is : $A")
    break 
}
if ($B -gt $A -and $B -gt $C) {
    Write-Host("Max is : $B")
    break 
}
if ($C -gt $A -and $C -gt $B) {
    Write-Host("Max is : $C")
    break 
}