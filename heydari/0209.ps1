$list = Import-Csv -Path "C:\Users\3422132821\Repos\Class-9743\heydari\Resources\City.csv"


foreach ($item in $List ){

$OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like $item.Code

New-ADOrganizationalUnit "Computers" -Path $OUList.distinguishedname
New-ADOrganizationalUnit "Users" -Path $OUList.distinguishedname
New-ADOrganizationalUnit "Groups" -Path $OUList.distinguishedname




}