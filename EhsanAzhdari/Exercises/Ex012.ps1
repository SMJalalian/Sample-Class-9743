Clear-Host
$A = Read-Host "Please Enter First Number"
$B = Read-Host "Please Enter Second Number"
$C = Read-Host "Please Enter Third Number"
if ([math]::pow($A,2) -eq [math]::pow($B,2) + [math]::pow($C,2)) {
    Write-Host("You CAN Build a Right Triangle")
    }
elseif ([math]::pow($B,2) -eq [math]::pow($A,2) + [math]::pow($C,2)) {
    Write-Host("You CAN Build a Right Triangle")
    }
elseif ([math]::pow($C,2) -eq [math]::pow($A,2) + [math]::pow($B,2)) {
    Write-Host("You CAN Build a Right Triangle")
    }
else {
     Write-Host("You CAN'T Build a Right Triangle")
     }
        

