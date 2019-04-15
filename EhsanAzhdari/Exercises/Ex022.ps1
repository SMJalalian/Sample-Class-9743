Clear-Host
for ($i = 2; $i -le 50; $i++) {
    Write-Host("`nNumber $i :")
    for ($j = 1; $j -le $i; $j++) {
        if ($i % $j -eq 0) {
            Write-Host("$j `t") -NoNewline
        }
    }
}