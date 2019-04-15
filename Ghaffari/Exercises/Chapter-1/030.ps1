# Find Salary
Clear-Host
$Name = Read-Host "Name "
$WH = Read-Host "Work Hours "
$SHour = Read-Host "Salary Per Hour "
$Salary = $SHour * $WH
"$Name salary = $Salary"