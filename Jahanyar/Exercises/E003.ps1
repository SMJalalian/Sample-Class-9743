clear-host
[int32]$Salary = Read-Host "Pleas write the salary"
$Insurance = (($S*10)/100)
$Mortgaje = ($s*5)/100
$wage = $Salary - $Insurance - $Mortgaje
Write-Host "The Final Wage is $wage"