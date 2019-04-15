Clear-Host
[int32] $a = read-host "Please Enter 1st Number"
[int32] $b = read-host "Please Enter 2nd Number"
[int32] $c = read-host "Please Enter 3th Number"
if ( $a -gt $b -and $a -gt $c) {
    Write-Host "Maximum Number is $a"
}    
    if ( $c -gt $b -and $c -gt $a) {
         Write-Host "Maximum Number is $c"
        }
            if ( $b -gt $a -and $b -gt $c) {
                Write-Host "Maximum Number is $b"
            }