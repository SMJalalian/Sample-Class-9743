Clear-Host
for ($i = 1; $i -le 9; $i++) {
    for ($j = 0; $j -le 8; $j+=2) {
         Write-Host("$i$j$i")
    }
}
