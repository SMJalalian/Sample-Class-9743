$list = Import-Csv -Path "C:\Users\1050150309\LocalRepo\class-9743\Jahanyar\Gilan\gilan.csv" -Encoding UTF8
foreach ($item in $list)
{
    $Des = $item.tag + " - " + "شهر " + $item.city
    New-ADOrganizationalUnit -Name $item.Code -Path "ou=960000,ou=domain objects,dc=powershell,dc=local" -Description $Des 
}