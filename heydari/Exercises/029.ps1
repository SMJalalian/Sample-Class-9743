Clear-Host
[int]$a = Read-Host "mizan hoghogh sa@t khod ra vard konid"
[int]$h = read-host "mizan sa@t kar khod ra vard konid"
[int]$s = 0
    if ($h -le 50) {
        $s=$h*$a
    }
    else {
        $b=($h-50)*3/2*$a
        $s=$a*50+$b
       }
Write-Host "mizan hoghogh : $s"


