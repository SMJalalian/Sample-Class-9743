[int] $a = Read-Host "please enter N value"
[int] $b = Read-Host "please enter N value"
[int] $c = Read-Host "please enter N value"

if ($a -le $b+$c) {
    if ($b -le $a+$c) {
        if ($c -le $a+$b) {
            Write-Host "You can build a traiangle"
            
        }
        else {
            write-Host "You cant build a traiangle with these scales"
        }  
        } 
        else {
            write-Host "You cant build a traiangle with these scales"
    }    
}
else {
    write-Host "You cant build a traiangle with these scales"
}