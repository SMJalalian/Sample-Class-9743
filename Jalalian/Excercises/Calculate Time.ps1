Clear-Host
[int64]$IN = 0
$IN = Read-Host("Enter Number of Second(s) for calculation ")
[int32]$Sec = $IN%60
Write-Host("Number of Second(s) is : " + $Sec)
if ( $IN/60 -ge 1 ){
    $Min = [math]::Floor(($IN/60)%60)
    Write-Host("Number of Minute(s) is : " + $Min)
    if ( $IN/3600 -ge 1 ){
        $Hr = [math]::Floor(($IN/3600)%3600)%24
        Write-Host("Number of Hour(s) is : " + $Hr)
        if ( $IN/86400 -ge 1 ){
            $Day = [math]::Floor(($IN/86400)%86400)%30
            Write-Host("Number of Day(s) is : " + $Day)
            if ( $IN/604800 -ge 1 ){
                $Week = [math]::Floor(($IN/604800)%604800)%4
                Write-Host("Number of Week(s) is : " + $Week)            
                if ( $IN/2592000 -ge 1 ){
                    $Mount = [math]::Floor(($IN/2592000)%2592000)%12
                    Write-Host("Number of Mount(s) is : " + $Mount)
                    if ( $IN/31104000 -ge 1 ){
                        $Year = [math]::Floor(($IN/31104000)%31104000)
                        Write-Host("Number of Year(s) is : " + $Year)
                    }
                }
            }
        }        
    }
}