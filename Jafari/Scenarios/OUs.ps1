New-ADOrganizationalUnit -Name 970000 -Path "OU=Domain Objects,DC=PowerShell,DC=Local" -Description "KER - استان کرمان "
$Provience = import-csv -Path "C:\Projects\class-9743\Jafari\Scenarios\Proviences (2).csv" -Encoding UTF8
foreach ( $City in $Provience ) {
    $Des = $City.Tag + " - " + " شهر " + $City.City
    New-ADOrganizationalUnit -Name $City.Code.ToString() -Path "OU=970000,OU=Domain Objects,DC=PowerShell,DC=Local" -Description $Des
    #$City.Code
}