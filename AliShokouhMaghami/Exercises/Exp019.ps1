$N = Read-Host "Enter your Number:"
$s = 0
$i = 1

do {
    [int]$r = ($n - $i) * ($n / $i)



if($r = 0){

    $s += $i

}

$i = $i++

}while ($i = ($n / 2)) {
    
}

if ($s = $n){

    Write-Host "N number is TAM-Type"

}else{

    Write-Host "N number is NOT TAM-Type"
}
