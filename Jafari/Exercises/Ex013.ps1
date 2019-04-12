$S = 0
[int] $I = Read-Host "Enter the 1st Number"
$S += $I
[int] $I = Read-Host "Enter the 2nd Number"
$S += $I
[int] $I = Read-Host "Enter the 3rd Number"
$S += $I
$Counter = 4
while($Counter -le 100){
    [int] $I = Read-Host "Enter the $Counter th Number"
    $S += $I
    $Counter++
}
Write-Host("The Summation of 100 Number You Have Been Entered Is: " + $S)