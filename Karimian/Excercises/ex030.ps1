Clear-Host
$ArrayEmploye=@()

#for ($i = 1; $i -le 500; $i++) {
for ($i = 1; $i -le 2; $i++) {    
    $Employee = New-Object -TypeName psobject
    $n = Read-Host("Please enter Employee Name")
    [int]$h = Read-Host("Please enter Employee Salary")
    if ($h -le 25000) {
        $e = $h * 0.05
    }
    elseif ($h -le 35000) {
        $e = $h * 0.07    
    }
    else {
        $e = $h * 0.1    
    }
    $s = $h + $e
    $Employee | Add-Member -MemberType NoteProperty -Name EmployeeName -Value $n 
    $Employee | Add-Member -MemberType NoteProperty -Name EmployeeIncome -Value $h 
    $Employee | Add-Member -MemberType NoteProperty -Name EmployeeExtend -Value $e     
    $Employee | Add-Member -MemberType NoteProperty -Name EmployeeSalary -Value $s
    $ArrayEmploye += $Employee
}

Write-Host( "Name Income Extend Salary" )
Write-Host( "---------------------------" )
foreach ($item in $ArrayEmploye) {  
    $n=$item.EmployeeName
    $h=$item.EmployeeIncome
    $e=$item.EmployeeExtend
    $s=$item.EmployeeSalary
    Write-Host( " $n $h $e $s" )    
}
