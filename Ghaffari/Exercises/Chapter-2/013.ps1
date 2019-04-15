# Exchange without Temporary

function Set-Exchange {
    param ([int]$A,[int]$B)
    if ($A -ge $B) { $A = $A - $B;$B += $A;$A = $B - $A}
        else {$B = $B - $A;$A += $B;$B = $A - $B}
}

Clear-Host
[int]$A = Read-Host "Enter Number A "
[int]$B = Read-Host "Enter Number B "
Set-Exchange -A $A -B $B
"A = $A & B = $B"
