$Units = "FAV", "MAL", "RAV"
$Province = import-csv -Path "C:\Projects\class-9743\Jafari\Scenarios\Provinces.csv" -Encoding UTF8
foreach ( $City in $Province ) {
    $Des = $City.Code
    $CompName = "KE-" + $City.Tag + "-"
    $CommonName = $CompName
    foreach($Unit in $Units){
        $CompName += $Unit + "-0"
        $CommonUnitName = $CompName
        if($Unit -eq "FAV"){
            for($i = 1; $i -le 2; $i++){
                $CompName += $i.ToString()
                #$CompName
                #$Des
                New-ADComputer -Name $CompName -Description $Des
                $CompName = $CommonUnitName
                #Read-Host "Stop"
            }
        }elseif($Unit -eq "MAL"){
            for($i = 1; $i -le 3; $i++){
                $CompName += $i.ToString()                
                New-ADComputer -Name $CompName -Description $Des
                $CompName = $CommonUnitName
            }
        }elseif($Unit -eq "RAV"){
            for($i = 1; $i -le 4; $i++){
                $CompName += $i.ToString()

                New-ADComputer -Name $CompName -Description $Des
                $CompName = $CommonUnitName
            }
        }
        $CompName = $CommonName
    }       
}