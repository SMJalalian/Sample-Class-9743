Clear-Host
for ($i = 1; $i -le 9; $i+=2) {
    for ($j = 0; $j -le 8; $j+=2) {
        for ($k = 1; $k -le 9; $k+=2) {
            for ($l = 0; $l -le 8; $l+=2) {
                Write-Host("$i$j$k$l")
            }  
        }
    }
}
