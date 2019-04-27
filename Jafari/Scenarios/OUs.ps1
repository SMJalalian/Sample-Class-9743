#New-ADOrganizationalUnit -Name 970000 -Path "OU=Domain Objects,DC=PowerShell,DC=Local" -Description "KER - استان کرمان "
$Provience = import-csv -Path "C:\Projects\class-9743\Jafari\Scenarios\Proviences (2).csv" -Encoding UTF8
foreach ( $City in $Provience ) {
    $Des = $City.Tag + " - " + $City.City + " شهر "
    #New-ADOrganizationalUnit -Name $City.Code.ToString() -Path "OU=970000,OU=Domain Objects,DC=PowerShell,DC=Local" -Description $Des
    #$City.Code
    $Des
}
#******************************************************************

for ( $i ; $i -le 972000 ; $i+=100 ) {
    $Temp = New-ADOrganizationalUnit -Name $i.ToString() -Path "OU=970000,OU=Domain Objects,DC=PowerShell,DC=Local"
    $Temp.
}
$OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like 90*
foreach ( $OU in $OUList ) {
    if ( $OU.DistinguishedName.Substring(0,9) -ne "OU=900000") {
        $OU.DistinguishedName
    }    
    
}