function Check-Even {
    param (
        [int]$Number 
    )
    if ($Number % 2 -eq 0) {
        Return 1
    }
    else {
        Return 0
    }
    
}

for ($i = 1000; $i -le 9999; $i++) {
    $str = $i.ToString()
    if ( (Check-Even($str[3])) -and (Check-Even($str[1])) -and (!(Check-Even $str[2])) -and (!(Check-Even $str[0] )) ) {
        $i
    }
}