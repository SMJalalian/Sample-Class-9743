# Even / Odd  4 Digit Numbers (1010 to 9898)

function Get-EvenOddNum {
    for ($D4 = 1; $D4 -le 9; $D4+=2) {
        for ($D3 = 0; $D3 -le 8; $D3+=2) {
            for ($D2 = 1; $D2 -le 9; $D2+=2) {
                for ($D1 = 0; $D1 -le 8; $D1+=2) {
                    $Num = ($D4*1000)+($D3*100)+($D2*10)+$D1
                    $Num
                    #$Num = $D4.ToString()+$D3.ToString()+$D2.ToString()+$D1.ToString()
                }
            }
        }
    }
    #return $Num
}

Clear-Host
Get-EvenOddNum