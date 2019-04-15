$Output = "The 4-Digit Numbers With Even Thousands and Tens, And Odd Hundreds and One Are:`n"
for($Thousands = 1; $Thousands -le 9; $Thousands += 2){
    for($Hundreds = 0; $Hundreds -le 8; $Hundreds += 2){
        for($Tens= 1; $Tens -le 9; $Tens += 2){
            for($One = 0; $One -le 8; $One += 2){
                #$Output += $Thousands + $Hundreds + $Tens + $One + "`n"
                $Number = ($Thousands * 1000) + ($Hundreds * 100) + ($Tens * 10) + $One
                $Output += "$Number `n"
            }
        }
    }
}
$Output