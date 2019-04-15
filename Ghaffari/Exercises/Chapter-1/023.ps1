# Divisors Number of 2 to 500
for ($j = 2; $j -le 500; $j++) {
    Write-Host ("`nNumber "+$j+" Divisors :")
    for ($i = 1; $i -le $j; $i++) {
        if (!($j % $i)) { Write-Host -NoNewline $i" "}
    }
}