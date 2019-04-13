$n = Read-Host "please enter N value"


$r = ( $n - 2 ) * ( $n / 2 )

if ($r -eq 0) {

    write-host "$n IS EVEN"
    
}

else{

    Write-Host "$n IS ODD"

}