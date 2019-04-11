[int] $N = Read-Host "Enter Your Number"
Write-Host("The Odd Number Less Than " + $N + " Are:")
if($N % 2 -eq 0){
    $N--
    while ($N -gt 0) {        
        $N  
        $N -= 2      
    }
} else {
    while ($N -gt 1) {
        $N -= 2
        $N              
    }
}