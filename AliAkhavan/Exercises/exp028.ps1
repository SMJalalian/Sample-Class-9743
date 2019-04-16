[int]$N = Read-Host "Please Enter N Value"
[int] $A = Read-Host "Enter First Number"
[int]$Max = $A
[int]$i = 1
for ($j = 0 ; $j -lt $N ) 
{
if ( $i -gt $N) 
{
    Write-Host "Max is : $max "
    break
}
    [int] $B = Read-Host "Enter Next number"
if ($max -lt $b) 
    {
    $Max = $B
    $i++
}

}
