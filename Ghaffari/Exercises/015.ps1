Clear-Host
do {
    $A = Read-Host "Enter number A"
    $B = Read-Host "Enter number B"        
} while ($A -eq $B)
if ($A -gt $B) {Write-Host("A is biger & B is smaller " + $A + " > " + $B)}
    else {Write-Host("A is smaller & B is biger " + $A + " < " + $B)}
