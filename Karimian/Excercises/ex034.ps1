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
    if ($MyArray.GetValue(0) -eq $MyArray.GetValue(2) -and $MyArray.GetValue(1) % 2 -eq 0 ) {
        $i
    }  
}
