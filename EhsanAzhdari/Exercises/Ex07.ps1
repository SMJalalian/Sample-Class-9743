[int]$SUM = 0
for($i=1000 ; $i -le 2000 ; $i=$i+2){
    Write-Host($i)
    $SUM = $SUM + $i
    }
Write-Host("SUM is : $SUM")