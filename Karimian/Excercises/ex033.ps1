Clear-Host
for ($i = 1000; $i -lt 10000; $i+=2) {
    $MyArray = @()
    $n=$i
    while( $n -ge 10 )
    {
    $MyArray += $n % 10
    $n = [math]::Floor( $n / 10 )    
    }
    $MyArray += $n    
    if ($MyArray.GetValue(1) % 2 -eq 1 -and $MyArray.GetValue(2) % 2 -eq 0 -and $MyArray.GetValue(3) % 2 -eq 1 ) {
        $i
    } 
}
