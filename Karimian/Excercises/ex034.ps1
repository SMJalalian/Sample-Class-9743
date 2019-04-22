Clear-Host
for ($i = 100; $i -lt 1000; $i++) {
    $MyArray = @()
    $n=$i
    while( $n -ge 10 )
    {
    $MyArray += $n % 10
    $n = [math]::Floor( $n / 10 )    
    }
    $MyArray += $n  
    if ($MyArray[0] -eq $MyArray[2] -and $MyArray[1] % 2 -eq 0 ) {
        $i
    }  
}
