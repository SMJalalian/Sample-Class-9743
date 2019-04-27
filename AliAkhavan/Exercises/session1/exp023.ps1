[int] $R = Read-Host "please enter Day"
[int] $M = Read-Host "please enter Month"
[int] $temp
[int] $temp1

if ($M -le 6) {
    $temp = $M - 1
    $n = $R + $temp * 31
    Write-Host "we r in the day of $n"
    break
}
    
elseif ($M -lt 11) {
    $temp1 = $M - 6
    $n = $R + $temp1 * 31  + 186 
    Write-Host "we r in the day of $n "
    break    
} 
else 
{
    $n = 336 + $R
    Write-Host "we r in the day of  $n " 
    break

}