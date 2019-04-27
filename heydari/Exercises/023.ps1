Clear-Host
[int]$m = Read-host "Mah ra vard konid"
[int]$d = Read-host "roz ra vard konid"
if($m -le 7){
    [int]$s = (($m - 1) * 31) + $d
} else { 
    [int]$s = 186 + (($m - 7) * 30) + $d
}
Write-Host "shoma dar $s roz sal hastid"