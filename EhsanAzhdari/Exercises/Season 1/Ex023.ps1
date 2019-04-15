Clear-Host
[int]$R = Read-Host "Please Enter Day"
[int]$M = Read-Host "Please Enter Month"
[int]$N = 0
if ($M -le 6) {
    $N = ($M-1) * 31 + $R
}
elseif ($M -lt 11) {
    $N = ($M-6) * 30 + $R + 186
}
else {
    $N = 336 + $R
}
Write-Host("You in $N Day Of Year")