$list = Import-Csv -Path "C:\Users\3422132821\Repos\Class-9743\heydari\Resources\City.csv"
foreach ($item in $list){
$Des = $item.tag + " - " + "شهر " + $item.city
New-ADOrganizationalUnit -Name $item.code -Path "OU=950000,OU=Domain Objects,DC=PowerShell,DC=Local" -Description $des

}