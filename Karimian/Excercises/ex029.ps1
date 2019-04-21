Clear-Host
$ArrayEmploye=@()
[int]$m = Read-Host("Please enter number of Employee")

for ($i = 1; $i -le $m; $i++) {
    $Employee = New-Object -TypeName psobject
    $n = Read-Host("Please enter Employee Name")
    [int]$h = Read-Host("Please enter Employee hour")
    [int]$hs = Read-Host("Please enter Employee Income per hour")
    if ($h -gt 50) {
        $ez = $h - 50
        $h = 50
    }
    else {
        $ez = 0
    }
    $s = ($h * $hs) + ($ez * 1.5 *$hs)
    $Employee | Add-Member -MemberType NoteProperty -Name EmployeeName -Value $n 
    $Employee | Add-Member -MemberType NoteProperty -Name EmployeeSalary -Value $s
    $ArrayEmploye += $Employee
}

foreach ($item in $ArrayEmploye) {  
    $n=$item.EmployeeName 
    $s=$item.EmployeeSalary  
    Write-Host( "Salary of $n is $s" )    
}
