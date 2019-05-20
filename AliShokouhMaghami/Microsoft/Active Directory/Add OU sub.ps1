Clear-Host
$AllCity = Import-Csv -Path "C:\Users\0820146439\Documents\PowerShell\class-9743\EhsanAzhdari\Resources\ProviencesFinal.csv" -Encoding UTF8

foreach ($City in $AllCity) {
    $OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like $City.Code
    New-ADOrganizationalUnit -Name Computer -Path $OUList.DistinguishedName 
    New-ADOrganizationalUnit -Name Users -Path $OUList.DistinguishedName
    New-ADOrganizationalUnit -Name Group -Path $OUList.DistinguishedName
} 