[int] $A = Read-Host "Enter The 1st Edge"
[int] $B = Read-Host "Enter The 2nd Edge"
[int] $C = Read-Host "Enter The 3rd Edge"
if($A -le ($B + $C) -and $B -le ($A + $C) -and $C -le ($A + $B)){
    Write-Host("We Can Have a Triangle with Edges: " + $A + ", " + $B + " and " + $C +".")
} else {
    Write-Host("We Cannot Have a Triangle with Theses Edges!")
}
