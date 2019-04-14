$a = Read-Host "please enter N value"
$b = Read-Host "please enter N value"
$c = Read-Host "please enter N value"

if( [math]::Pow($a,2) -eq [math]::Pow($b,2) + [math]::Pow($c,2) ){

    Write-Host "Can make a triangle"
    
}elseif( [math]::Pow($b,2) -eq [math]::Pow($a,2) + [math]::Pow($c,2) ){

    Write-Host "Can make a triangle"

}elseif( [math]::Pow($c,2) -eq [math]::Pow($a,2) + [math]::Pow($b,2) ){

        Write-Host "Can make a triangle"

    }

else{

    Write-Host "Can't make a triangle"

}
