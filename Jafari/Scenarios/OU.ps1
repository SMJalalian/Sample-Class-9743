$Country = import-csv -Path "E:\PowerShell\GitHub Projects\Class-9743\Jalalian\Resources\Proviences.csv" -Encoding UTF8
#$Country
foreach ( $X in $Country) {
    $X.'استان	شهر'
}
#******************************************************************
for ( $i = 900100 ; $i -le 902000 ; $i+=100 ) {
    New-ADOrganizationalUnit -Name $i.ToString() -Path "OU=900000,OU=Domain Objects,DC=PowerShell,DC=Local"
}
$OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like 90*
foreach ( $OU in $OUList ) {
    if ( $OU.DistinguishedName.Substring(0,9) -ne "OU=900000") {
        $OU.DistinguishedName
    }    
    
}