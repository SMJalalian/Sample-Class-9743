# Find Divisor from 2 to 500
Clear-Host
for ($j = 2; $j -le 500; $j++) {
    "`nNumber "+$j+" Divisors :"
    for ($i = 1; $i -le $j; $i++) {
        if (!($j%$i)){Write-Host -NoNewline($i.ToString()+" ")}
    }

}
