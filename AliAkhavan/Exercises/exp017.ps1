[int] $n = Read-Host "please enter N value"

[int] $temp = $n/2
[int] $r = $n - 2 * $temp

if ($r -eq 0) {
    write-host "addad zoj ast"
}
elseif ($r -eq 1) {
    Write-Host "addad fard ast"
}