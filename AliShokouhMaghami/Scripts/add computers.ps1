$City = import-csv -Path "C:\local repos\class-9743\AliAkhavan\Scripts\my town.csv" -Encoding UTF8

    
foreach ( $cc in $City ) {

    for ($i = 1; $i -le 2 ; $i++ ) {
        $name = "SI" + "-" + $cc.TAG + "-" + "FAV" +  "-"  + 0 + $i.ToString()
        New-ADComputer -name $name -Description $cc.Code.ToString()
    } 

    for ($i = 1; $i -le 3 ; $i++ ) {
    
        $name = "SI" + "-" + $cc.TAG + "-" + "MAL" +  "-"  + 0 + $i.ToString()
        New-ADComputer -name $name -Description $cc.Code.ToString()             
    } 

    for ($i = 1; $i -le 4 ; $i++ ) {

        $name = "SI" + "-" + $cc.TAG + "-" + "RAV" +  "-"  + 0 + $i.ToString()
        New-ADComputer -name $name -Description $cc.Code.ToString()
                               
    } 
                                    
} 