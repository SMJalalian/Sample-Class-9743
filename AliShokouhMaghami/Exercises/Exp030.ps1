Clear-Host
for ($i = 1; $i -le 1; $i++) {
    $Name = Read-Host "Please Enter Employee Name Number $i "
    [int]$OldSalary = Read-Host "Please Enter Old Salary $Name "
    if ($OldSalary -le 25000) {
        [int]$AddSalary = ( $OldSalary * 5 ) / 100
    }
    elseif ($OldSalary -le 35000 -and $OldSalary -gt 25000) {
        [int]$AddSalary = ((25000 * 5) / 100) + (((35000 - $OldSalary)*7) / 100)
    }
    else {
        [int]$AddSalary = ((25000 * 5) / 100) + ((10000 * 7) / 100) + ((($OldSalary - 35000)*10) / 100)
    }
    [int]$NewSalary = $OldSalary + $AddSalary
    Write-Host("Name is : $Name`nOld Salary is : $OldSalary`nAdded Salary is : $AddSalary`nNew Salary is : $NewSalary")
}