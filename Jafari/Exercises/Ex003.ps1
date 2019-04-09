[int] $A = Read-Host "Enter The Wage"
$B = $A * 0.1  # 10%
$M = $A * 0.05   # 5%
Write-Host ("The Payment Will be: " + ($A - $B - $M))