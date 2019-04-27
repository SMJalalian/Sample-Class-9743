[int]$M = Read-Host "Please Enter number of employees"

[int]$i = 1
if ($i -le $M) 
    {
for ($i = 1 ; $i -le $M ; $i++) 
{
     $N = Read-Host "Enter employees name"
    [int] $H = Read-Host "Enter old salary"
    
if ($H -le 25000 ) 
{
    $E = ( $H * 5 ) / 100
    $S = $H + $E
    Write-Host "employee name is: $N "
    Write-Host "Old salary is: $H "
    Write-Host "Bonus salary is: $E "
    Write-Host "New salary is: $s "

}
    elseif ($H -le 35000) {
        
        $E = ((25000 * 5) / 100) + (((35000 - $H)*7) / 100)
        $S = $H + $E
    Write-Host "employee name is: $N "
    Write-Host "Old salary is: $H "
    Write-Host "Bonus salary is: $E "
    Write-Host "New salary is: $s "
    }
else {
    [int]$E = ((25000 * 5) / 100) + ((10000 * 7) / 100) + ((($H - 35000)*10) / 100)
    $S = $H + $E
    Write-Host "employee name is: $N "
    Write-Host "Old salary is: $H "
    Write-Host "Bonus salary is: $E "
    Write-Host "New salary is: $s "
}
    }
}
