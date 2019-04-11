[int] $A = Read-Host "Enter the 1st Number"
[int] $B = Read-Host "Enter the 2nd Number"
while ($A -eq $B) {
    Write-Host("The Numbers You have Been Entered Are Equal.")
    [int] $A = Read-Host "Enter the 1st Number Again"
    [int] $B = Read-Host "Enter the 2nd Number Again"    
}
if($A -lt $B){
    Write-Host("$A Is The Smallest Number, And the $B Is The Biggest Number.")
} else {
    Write-Host("$B Is The Smallest Number, And the $A Is The Biggest Number.")
}