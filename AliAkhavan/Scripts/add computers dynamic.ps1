$City = import-csv -Path "C:\local repos\class-9743\AliAkhavan\Scripts\my town.csv" -Encoding UTF8
$Dynamicaddress = import-csv -Path "C:\local repos\class-9743\AliAkhavan\Scripts\finalinfo.csv" -Encoding UTF8


foreach ($info in $Dynamicaddress) 
{
}
    for ($i = $info; $i -le 3 ; $i++ ) {
foreach ( $cc in $City ) {
$name = "SI" + "-" + $cc.TAG + "-" + "FAV" +  "-"  + 0 + $i.ToString()
    New-ADComputer -name $name -Description $cc.Code.ToString()


    }
    
  }
}

foreach ($BB in $Dynamicaddress) 
{
    
    foreach ( $cc in $City ) {
    
        $name = "SI" + "-" + $cc.TAG + "-" + "MAL" +  "-"  + 0 + $i.ToString()
            New-ADComputer -name $name -Description $cc.Code.ToString()
         
        
            } 
            
            
        }

        foreach ($BB in $Dynamicaddress) 
{
            foreach ( $cc in $City ) {
            
                $name = "SI" + "-" + $cc.TAG + "-" + "RAV" +  "-"  + 0 + $i.ToString()
                    New-ADComputer -name $name -Description $cc.Code.ToString()
                 
                
                    } 
                    
                     
                }