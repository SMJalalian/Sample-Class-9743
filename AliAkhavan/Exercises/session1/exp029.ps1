[int]$M = Read-Host "Please Enter number of employees"

[int]$i = 1
if ($i -le $M) 
    {
for ($i = 1 ; $i -le $M ; $i++) 
{
     $N = Read-Host "Enter employees name"
    [int] $H = Read-Host "Enter Working time"
    [int] $HS = Read-Host "Enter salary per hour"
if ($H -le 50 ) 
{
    $S = $H * $HS
    Write-Host "employee name is: $N "
    Write-Host "whole salary is: $S "
}
    else {
        $S = ($HS * 50) + ( $H - 50 ) * 3/2 * $HS
        Write-Host "employee name is: $N "
        Write-Host "whole salary is: $S "
    }

    }
}
