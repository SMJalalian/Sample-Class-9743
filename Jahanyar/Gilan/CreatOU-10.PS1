$list = Import-Csv -Path "C:\Users\1050150309\LocalRepo\class-9743\Jahanyar\Gilan\gilan.csv" -Encoding UTF8
foreach ($item in $list)
{
    $TargetOU = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -like $item.Code
    New-ADOrganizationalUnit "Users" -Path $TargetOU.DistinguishedName
    New-ADOrganizationalUnit "Computers" -Path $TargetOU.DistinguishedName
    New-ADOrganizationalUnit "Groups" -Path $TargetOU.DistinguishedName
}