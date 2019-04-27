for ( $i = 950000 ; $i -le 952000 ; $i+=100 ) {
    New-ADOrganizationalUnit -Name $i.ToString() -Path "OU=950000,OU=Domain Objects,DC=PowerShell,DC=Local"
}
$OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like 90*
foreach ( $OU in $OUList ) {
    if ( $OU.DistinguishedName.Substring(0,9) -ne "OU=950000") {
        $OU.DistinguishedName
    }    
    
}