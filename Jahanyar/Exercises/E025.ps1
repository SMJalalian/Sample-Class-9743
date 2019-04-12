Clear-Host
$M = Read-Host "Please Enter 1st Number"
$N = Read-Host "Please Enter 2nd Number"
$Min = [math]::Min($M , $N)
$Max = [math]::Max($M , $N)
$X = 1
for ($i = 2; $i -le $Min; $i++) {
    
    if ( ( $N % $i -eq 0 ) -and ( $M % $i -eq 0) ){
        $X   = $i
    }
}
write-host "B.M.M is $X"
$K = ($n * $m) / $X
Write-Host "K.M.M is $k"
