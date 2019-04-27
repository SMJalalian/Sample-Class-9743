Clear-Host
$AllCity = Import-Csv -Path "C:\Users\0820146439\Documents\PowerShell\class-9743\EhsanAzhdari\Resources\Final.csv" -Encoding UTF8

foreach ($City in $AllCity) {
    $Description = $city.TAG + " - " + $city.City + "شهر"
    New-ADOrganizationalUnit -Name $city.Code -Path "OU=930000,OU=Domain Objects,DC=PowerShell,DC=Local" -Description $Description
}