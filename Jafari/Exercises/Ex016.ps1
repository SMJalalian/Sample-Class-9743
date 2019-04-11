[int] $A = Read-Host "Enter the 1st Number"
[int] $B = Read-Host "Enter the 2nd Number"
[int] $C = Read-Host "Enter the 2nd Number"
if($A -gt $B -and $A -gt $C){
    Write-Host("$A Is The Biggest Number.")
} elseif ($B -gt $C){
    Write-Host("$B Is The Biggest Number.")
} else {
    Write-Host("$C Is The Biggest Number.")
}