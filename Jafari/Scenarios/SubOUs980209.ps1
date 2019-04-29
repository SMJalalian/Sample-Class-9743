$MainOU = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like 970000
$MainOU
$Province = import-csv -Path "C:\Projects\class-9743\Jafari\Scenarios\Proviences (2).csv" -Encoding UTF8
foreach ( $City in $Province ) {
    $DN = "OU=" + $City.Code + "," + $MainOU.DistinguishedName    
    
    New-ADOrganizationalUnit -Name "Computers" -Path $DN
    New-ADOrganizationalUnit -Name "Users" -Path $DN
    New-ADOrganizationalUnit -Name "Groups" -Path $DN
}