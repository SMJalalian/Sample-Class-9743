Clear-Host
$n = Read-Host "please Enter a Number"
$counter = 0
$sum = 0
for ($i = 4; $i -le $n; $i+=4) {
   if ( $i % 4 -eq 0) {
        Write-Host "$i + " -NoNewline 
       $counter++
       $sum += $i
   } 
}
    write-host "= $sum"
    write-host "count of Them is $counter"
