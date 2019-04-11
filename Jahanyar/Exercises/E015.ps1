Clear-Host
do {
    $a = read-host "Please Enter a number"
    $b = read-host "Please Enter another number"
    if($b -ne $a) {
        if($b -lt $a) {
             Write-Host "$a is More Than $b"
        }
        else {
            Write-Host "$a is Less Than $b"
        }
    }
    
} while ($a -eq $b)
   
