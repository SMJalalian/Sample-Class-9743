$City = import-csv -Path "C:\local repos\class-9743\AliAkhavan\source\my town.csv" -Encoding UTF8



foreach ( $item in $City ) {
    $Des = $item.TAG + "-" + "شهر " + $item.city 
    #New-ADOrganizationalUnit -Name $item.code -Path "OU=910000,OU=Domain Objects,DC=PowerShell,DC=Local"
    New-ADOrganizationalUnit -name $item.code -Description $Des -Path "OU=920000,OU=Domain Objects,DC=PowerShell,DC=Local"

    }  
