Clear-Host
$SUM = 0
for ($i = 1; $i -le 100; $i++) {
    $A = Read-Host "Please Enter Number $i"
    Write-Host("Number Enter Is : $A")
    $SUM = $SUM + $A
}
Write-Host ("SUM is : $SUM")