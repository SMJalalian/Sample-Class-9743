 $City = import-csv -Path "C:\local repos\class-9743\AliAkhavan\source\my town.csv" -Encoding UTF8


foreach ( $cc in $City ) {
    $oulist = Get-ADOrganizationalUnit -Filter * | Where-Object -Property name -Like $cc.Code

    New-ADOrganizationalUnit -Name "Computers" -Path $oulist.DistinguishedName
    New-ADOrganizationalUnit -Name "Users" -Path $oulist.DistinguishedName
    New-ADOrganizationalUnit -Name "Groups" -Path $oulist.DistinguishedName
  
    }  
