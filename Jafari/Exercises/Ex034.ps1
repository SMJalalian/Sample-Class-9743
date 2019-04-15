$Output = "The 3-Digit Numbers With Same Hundreds and One, And Even Tens Are:`n"
for($Hundreds= 1; $Hundreds -le 9; $Hundreds ++){
    for($Tens = 0; $Tens -le 8; $Tens += 2){
        $Number = ($Hundreds * 100) + ($Tens * 10) + $Hundreds
        $Output += "$Number `n"
    }
}
$Output