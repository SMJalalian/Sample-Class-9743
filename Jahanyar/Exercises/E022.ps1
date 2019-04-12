Clear-Host
for ($i = 2; $i -le 10 ; $i++) {
    Write-Host("Divisor(s) of $i are equal to: ") -NoNewline
    for ($j = 2; $j -le $i; $j++) {
        if ($j % 2 -eq 0) {
            Write-Host($j.ToString() + "  ") -NoNewline
        }
    }
    Write-Host("")
}
