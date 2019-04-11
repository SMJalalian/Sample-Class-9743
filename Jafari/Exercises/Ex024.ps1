[int] $Month = Read-Host "Enter The Month"
#Check the Correctness of Month
while ($Month -le 0 -or $Month -gt 12) {
    $Month = Read-Host "Enter The Month, Correctly (Between 1 and 12)"
}
[int] $Day = Read-Host "Enter The Day"
#Check the Correctness of Day According to Month
while ($Month -gt 6 -and $Day -gt 30) {
    $Day = Read-Host "Enter The Day, Correctly (Between 1 and 30)"    
}
#Check the Correctness of Day
while ($Day -le 0 -or $Day -gt 31) {
    $Day = Read-Host "Enter The Day, Correctly (Between 1 and 31)"
}
#1st Half the Year
if($Month -le 7){
    $D = (($Month - 1) * 31) + $Day
} else { #2nd Half of the Year
    $D = 186 + (($Month - 7) * 30) + $Day
}
Write-Host("You Are At $D Day of Year.")