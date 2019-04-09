clear-host
[int] $a = read-host "Please Write 1st Number"
[int] $b = read-host "Please Write 2nd Number"
[int] $c = read-host "Please Write 3rd Number"
if ( ($a -le $b+$c) -and ($b -le $a+$c) -and ($c -le $a+$b) ) {
    write-host "These Numbers can Make a Triangle"
    if ([math]::pow($a,2) -eq [math]::pow($b,2) + [math]:: pow($c,2) -or [math]::pow($b,2) -eq [math]::pow($a,2) + [math]:: pow($c,2) -or [math]::pow($c,2) -eq [math]::pow($a,2) + [math]:: pow($b,2))
    {
        Write-host "And It is Right triangle"
    }
    else {
        Write-host "But It isn't Right triangle"
    }
}
else {
    write-host "These Numbers cann't Make a Triangle"
}
    