$Divisors = @()
#Main Loop
for($i = 2; $i -le 500; $i++){
    #Calculating of Divisors for Each Number
    for($Counter = 1; $Counter -le $i / 2; $Counter++){
        if($i % $Counter -eq 0){
            $Divisors += $Counter            
        }
    }
    #Preparing Results for Print
    $String = "Divisors of $i Are: "
    for ($k = 0; $k -lt $Divisors.Count; $k++) {
        $String += $Divisors.GetValue($k)
        $String += ", "
    }
    $String += $i
    $String
    #Empty The Output Vars for Next Number
    $String = ""
    $Divisors = @()
}