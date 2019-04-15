Clear-Host
$A = Read-Host "Please Enter First Number"
$B = Read-Host "Please Enter Second Number"
$C = Read-Host "Please Enter Third Number"
if ($A -le $B + $C) {
    if ($B -le $A + $C) {
        if ($C -le $A + $B) {
            Write-Host("You CAN Build a Triangle") 
            break
        }
    }
}
Write-Host("You CAN'T Build a Triangle")