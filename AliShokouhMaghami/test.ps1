$Test = import-csv -Path "C:\PowerShell\Class-9743\AliShokouhMaghami\Proviences-Fars.csv" -Encoding UTF8
foreach ( $X in $Test ) {
    $desc = "شهر" + " - " + $X.Cities + " - " +  $X.CODE + " - " + $X.ID
    New-ADOrganizationalUnit -Description $desc -Name $X.CODE -Path "OU=910000,OU=Domain Objects,DC=PowerShell,DC=Local"
}

$Test




$OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like 90*
foreach ( $OU in $OUList ) {
    if ( $OU.DistinguishedName.Substring(0,9) -ne "OU=910000") {
        $OU.DistinguishedName
    }    
    
}




foreach ($Cities in $x)
{

}