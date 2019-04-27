[int] $a = Read-Host "please enter N value"
[int] $b = Read-Host "please enter N value"
[int] $c = Read-Host "please enter N value"

if ([math]::Pow($a,2) -eq [math]::Pow($b,2) + [Math]::Pow($c,2)) {
    Write-Host  "You can build it"
    break
    if ([math]::Pow($b,2) -eq [math]::Pow($a,2) + [Math]::Pow($c,2)) {
        Write-Host "You can build it"
        break
            if([math]::Pow($c,2) -eq [math]::Pow($a,2) + [Math]::Pow($b,2)){
              Write-Host "You can build it"
              break
            }
            else {
                write-Host "You cant build it"
        } 
    }
    else {
        write-Host "You cant build it"  
    }       
}  
else {
    write-Host "You cant build it"
}        
