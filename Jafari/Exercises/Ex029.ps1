[int] $N = Read-Host "Enter The Number of Your Employees"
$Output = "Employee                    Wage`n"
$Output += "----------                ----------`n"
$Payment = 0
for($i = 1; $i -le $N; $i++){
    $Name = Read-Host "Enter Employee Number #$i Name"
    [int] $Wage = Read-Host "Enter Employee Number #$i Wage Per Hour"
    [int] $Hours = Read-Host "Enter Employee Number #$i Working Hours"
    if($Hours -le 50){
        $Payment = $Wage * $Hours
    } else {
        $Payment = ($Wage * 50) + $Wage * ($Hours - 50) * 1.5
    }
    $Output += "$Name                       $Payment`n"
}
$Output