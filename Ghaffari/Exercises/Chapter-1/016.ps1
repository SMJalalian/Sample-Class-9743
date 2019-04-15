Clear-Host
do {
    $A = Read-Host "Enter number A"
    $B = Read-Host "Enter number B"
    $C = Read-Host "Enter number C"        
} while (($A -eq $B) -or ($B -eq $C) -or ($A -eq $C))

if (($A -gt $B) -and ($A -gt $C)) {Write-Host("A is biger than B and C " + $A)}
    elseif  (($B -gt $A) -and ($B -gt $C)) {Write-Host("B is biger than A and C " + $B)}
        else {Write-Host("C is biger than A and B " + $C)}
