Clear-Host
[int]$a = Read-Host("Please enter number a")
[int]$b = Read-Host("Please enter number b")
[int]$c = Read-Host("Please enter number c")
if( $a*$a -eq ($b*$b + $c*$c) -or $b*$b -eq ($a*$a + $c*$c) -or $c*$c -eq ($a*$a + $b*$b))
{
    Write-Host("yes")
}
else
{
    Write-Host("no")
}