$Test = import-csv -Path "C:\local repos\class-9743\AliAkhavan\source\my town.csv" -Encoding UTF8
foreach ( $X in $Test ) {
    $x.city

}


    New-ADOrganizationalUnit -Name $i.ToString() -Path "OU=900000,OU=Domain Objects,DC=PowerShell,DC=Local"

$OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like 90*
foreach ( $OU in $OUList ) {
    if ( $OU.DistinguishedName.Substring(0,9) -ne "OU=900000") {
        $OU.DistinguishedName
    }    
    
}