[int] $A = Read-Host "Enter the 1st Number"
[int] $B = Read-Host "Enter the 2nd Number"
while ($A -eq $B) {
    Write-Host("The Numbers You have Been Entered Are Equal.")
    [int] $A = Read-Host "Enter the 1st Number Again"
    [int] $B = Read-Host "Enter the 2nd Number Again"    
}
if($A -lt $B){
    Write-Host("$A Is The Least Number, And the $B Is The Greatest Number.")
} else {
    Write-Host("$B Is The Least Number, And the $A Is The Greatest Number.")
}