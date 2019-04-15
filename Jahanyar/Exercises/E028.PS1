Clear-Host
$n = Read-Host "Please Enter Count of Nummbers"
[int]$MAX = 1
for ($i = 1; $i -le $n; $i++) {
    $a = Read-Host "Please Enter a Number"
    if ($A -gt $MAX) {
        $MAX = $A
    }
}
"Maxumin Number is $max"