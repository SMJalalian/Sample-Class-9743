Clear-Host
[int]$n = Read-Host("Please enter number")
for ($i=$n ; $i -gt 0 ; $i-- )
{
    if ($i % 2  -eq 1)
    {
        $i
    }
}