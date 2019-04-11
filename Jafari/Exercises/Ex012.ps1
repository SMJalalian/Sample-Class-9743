[int] $A = Read-Host "Enter The 1st Edge"
[int] $B = Read-Host "Enter The 2nd Edge"
[int] $C = Read-Host "Enter The 3rd Edge"
if($A -le ($B + $C) -and $B -le ($A + $C) -and $C -le ($A + $B)){
    if([math]::Pow($A, 2) -eq ([math]::Pow($B, 2) + [math]::Pow($C, 2)) -or [math]::Pow($B, 2) -eq ([math]::Pow($A, 2) + [math]::Pow($C, 2)) -or [math]::Pow($C, 2) -eq ([math]::Pow($A, 2) + [math]::Pow($B, 2))){
        Write-Host("OK! We Can Have a Right Triangle with Edges: " + $A + ", " + $B + " and " + $C +".")
    } else {
    Write-Host("We Cannot Have a Right Triangle with Theses Edges!")
    }
} else {
    Write-Host("Oooh! We Cannot Have a Triangle with Theses Edges!")        
}