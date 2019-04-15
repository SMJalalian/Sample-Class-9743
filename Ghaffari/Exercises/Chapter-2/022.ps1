# 3 Digit Numbers D1 = D3 & D1 = Even Number (000 to 989)

function Get-Num {
    for ($D1D3 = 0; $D1D3 -le 9; $D1D3++) {
        for ($D2 = 0; $D2 -le 8; $D2+=2) {
            $Num = ($D1D3*100)+($D2*10)+$D1D3
            $Num
        }
    }
    #return $Num
}

Clear-Host
Get-Num