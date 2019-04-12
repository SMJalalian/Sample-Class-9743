[int64] $Seconds = Read-Host "Enter The Number of Seconds"
$Output = "These Seconds Are Equal to: "
$Flag = 0
if([System.Math]::Floor($Seconds / 3153600000) -gt 0){
    $Output += [System.Math]::Floor($Seconds / 3153600000) 
    $Output += " Century(s)"
    $Seconds =  $Seconds % 3153600000
    $Flag = 1
}
if([System.Math]::Floor($Seconds / 31536000) -gt 0){
    if($Flag -eq 1){
        $Output += ", And "
    }
    $Output += [System.Math]::Floor($Seconds / 31536000) 
    $Output += " Year(s)"
    $Seconds =  $Seconds % 31536000
    $Flag = 1
}
if([System.Math]::Floor($Seconds / 2592000) -gt 0){
    if($Flag -eq 1){
        $Output += ", And "
    }
    $Output += [System.Math]::Floor($Seconds / 2592000)    
    $Output += " Month(s)"
    $Seconds =  $Seconds % 2592000
    $Flag = 1
}
if([System.Math]::Floor($Seconds / 604800) -gt 0){
    if($Flag -eq 1){
        $Output += ", And "
    }
    $Output += [System.Math]::Floor($Seconds / 604800) 
    $Output += " Weeks(s)"
    $Seconds =  $Seconds % 604800
    $Flag = 1
}
if([System.Math]::Floor($Seconds / 86400) -gt 0){
    if($Flag -eq 1){
        $Output += ", And "
    }
    $Output += [System.Math]::Floor($Seconds / 86400) 
    $Output += " Day(s)"
    $Seconds =  $Seconds % 86400
    $Flag = 1
}
if([System.Math]::Floor($Seconds / 3600) -gt 0){
    if($Flag -eq 1){
        $Output += ", And "
    }
    $Output += [System.Math]::Floor($Seconds / 3600)
    $Output += " Hour(s)"
    $Seconds =  $Seconds % 3600
    $Flag = 1
}
if([System.Math]::Floor($Seconds / 60) -gt 0){
    if($Flag -eq 1){
        $Output += ", And "
    }
    $Output += [System.Math]::Floor($Seconds / 60) 
    $Output += " Minute(s)"
    $Seconds =  $Seconds % 60
    $Flag = 1
}
if($Seconds -ne 0){
    if($Flag -eq 1){
        $Output += ", And "
    }
    $Output +=  "$Seconds Second(s)."
}
$Output