$list = Import-Csv -Path "C:\Users\3422132821\Repos\Class-9743\heydari\Resources\City.csv"


foreach ($item in $List ){

$OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like $item.Code

New-ADOrganizationalUnit "Computers" -Path $OUList.distinguishedname
New-ADOrganizationalUnit "Users" -Path $OUList.distinguishedname
New-ADOrganizationalUnit "Groups" -Path $OUList.distinguishedname




}

#-----------------------------
$list = Import-Csv -Path "C:\Users\3422132821\Repos\Class-9743\heydari\Resources\City.csv"


foreach ($item in $list ){
    for($i=1 ; $i -lt 3 ; $i++ ){
        $X = "HO" + "-" + $item.TAG + "-" + "FAV-0" + $i.ToString()
        New-ADComputer -Name $X -Description $item.code
    }

    for($i=1 ; $i -lt 4 ; $i++ ){
        $X = "HO" + "-" + $item.TAG + "-" + "MAL-0" + $i.ToString()
        New-ADComputer -Name $X -Description $item.code
    }

    for($i=1 ; $i -lt 5 ; $i++ ){
        $X = "HO" + "-" + $item.TAG + "-" + "RAV-0" + $i.ToString()
        New-ADComputer -Name $X  -Description $item.code
    }
} 