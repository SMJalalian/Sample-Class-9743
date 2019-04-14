Clear-Host
[int]$a = Read-Host("Please enter number a")
[int]$b = Read-Host("Please enter number b")
[int]$c = Read-Host("Please enter number c")
if($a -le $b+$c -and $b -le $a+$c -and $c -le $a+$b)
{
    Write-Host("yes")
}
else
{
    Write-Host("no")
}