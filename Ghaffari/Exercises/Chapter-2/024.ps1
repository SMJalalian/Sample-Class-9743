# Num 50 Division 20 & 10 & 5
Clear-Host
function Get-Check {
    param($D20,$D10,$D5)
    if (!(50 - ($D20*20)-($D10*10)-($D5*5))){
        return $true
    }   
    else {
        return $false
    }
}

for ($D20 = 1; $D20 -le 2; $D20++) {
    for ($D10 = 1; $D10 -le 5; $D10++) {
        for ($D5 = 1; $D5 -le 10; $D5++) {
            if (Get-Check -D20 $D20 -D10 $D10 -D5 $D5){
                "D20 = $D20 / D10 = $D10 / D5 = $D5"
            }
        }
    }
}