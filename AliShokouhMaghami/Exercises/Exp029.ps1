Clear-Host
$M = Read-Host "Please Enter Number OF Employees"
for ($i = 1; $i -le $M; $i++) {
    [int]$Overtime = 0
    $Name = Read-Host "Please Enter Employee Name Number $i "
    [int]$Hour = Read-Host "Please Enter Hours OF Work $Name "
    [int]$HourSalary = Read-Host "Please Enter Salary for 1 Hour Work"
    if ($Hour -gt 50) {
        $Overtime = $Hour - 50
        $Overtime = $Overtime * ( 3/2 * $HourSalary ) 
        $Hour = 50
    }
    [int]$SUM = ( $Hour * $HourSalary ) + $Overtime
    Write-Host("Salary $Name is : $SUM `n")
}