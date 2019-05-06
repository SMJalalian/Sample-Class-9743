Clear-Host
# New-ADOrganizationalUnit -Name 980000 -Path "OU=Domain Objects,DC=PowerShell,DC=Local"

$CSV = import-csv -Path "C:\Users\0946907374\Desktop\Az_sh0.csv" -Encoding UTF8
foreach ( $X in $CSV ) {
    #$X.City
    #$X.Pro
    #$x.Code
    #$x.Tag
    $Des= $x.Tag + " - " + "شهر " + $X.City.ToString()
    $Des
   # New-ADOrganizationalUnit -Name $x.Code.ToString() -Path "OU=980000,OU=Domain Objects,DC=PowerShell,DC=Local" -Description $Des
}