$Temp =""
$States = 0
for($i20 = 0; $i20 -le [math]::Floor(50/20); $i20++){
    for($i10 = 0; $i10 -le [math]::Floor(50/10); $i10++){
        for($i5 = 0; $i5 -le [math]::Floor(50/5); $i5++){
            if(5 * $i5 + 10 * $i10 + 20 * $i20 -eq 50){
                $Temp += "$i5 * 5; $i10 * 10; $i20 * 20`n"
                $States ++
                #Write-Host("$i5 * 5; $i10 * 10; $i20 * 20")
            }
        }
    }
}
$Output = "There Are $States States For These Combinations:`n"
$Output += $Temp
$Output