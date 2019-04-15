$a = Read-Host "please enter N value"
$b = Read-Host "please enter N value"
$c = Read-Host "please enter N value"

if( $a -le $b + $c ){

    if( $b -le $a + $c ){

        if( $c -le $a + $b ){

            Write-Host "Can make a triangle"

        }

    }
    
}else {

    Write-Host "Can't make a triangle"

}
