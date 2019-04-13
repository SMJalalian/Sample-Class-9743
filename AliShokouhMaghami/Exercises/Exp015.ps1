$a = Read-Host "please enter A nubmer"

$b = Read-Host "please enter B number"

if ( $a -gt $b ) {

    Write-Host "A is the biggest number"

    Write-Host "B is the smallest number"

    
}
elseif ( $a -lt $b ) {

    Write-Host "B is the biggest number"

    Write-Host "A is the smallest number"

    
} 

elseif( $a -eq $b ) {

    Write-Host "Numbers are Equal"

    $a = Read-Host "please enter A nubmer"

    $b = Read-Host "please enter B number"

}