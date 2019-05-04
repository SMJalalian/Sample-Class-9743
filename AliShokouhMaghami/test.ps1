$Test = import-csv -Path "C:\PowerShell\Class-9743\AliShokouhMaghami\Proviences-Fars.csv" -Encoding UTF8
foreach ( $X in $Test ) {
    $desc = "شهر" + " - " + $X.Cities + " - " +  $X.CODE + " - " + $X.ID
    New-ADOrganizationalUnit -Description $desc -Name $X.CODE -Path "OU=910000,OU=Domain Objects,DC=PowerShell,DC=Local"
    New-ADOrganizationalUnit -Name Computers 
    New-ADOrganizationalUnit -Name Users 
    New-ADOrganizationalUnit -Name Groups 

}

$Test




$OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like 90*
foreach ( $OU in $OUList ) {
    if ( $OU.DistinguishedName.Substring(0,9) -ne "OU=910000") {
        $OU.DistinguishedName
    }    
    
}


$OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Code -Like 91*


foreach ( $Name in $OUList ) {
    if ( $Name.DistinguishedName.Substring(0,9) -ne "OU=910000") {
    }    
    
}













foreach ($Item in $x)
{

}


$Test = import-csv -Path "C:\PowerShell\Class-9743\AliShokouhMaghami\Proviences-Fars.csv" -Encoding UTF8

foreach ( $X in $Test ) {

    $OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like $X.CODE
    New-ADOrganizationalUnit -Name "Computers" -Path $OUList.DistinguishedName
    New-ADOrganizationalUnit -Name "Users" -Path $OUList.DistinguishedName
    New-ADOrganizationalUnit -Name "Groups" -Path $OUList.DistinguishedName

}






$Test = import-csv -Path "C:\PowerShell\Class-9743\AliShokouhMaghami\Proviences-Fars.csv" -Encoding UTF8

    
foreach ( $X in $Test ) {
    for ($i = 1; $i -le 2; $i++) {
        $desc = $X.CODE
        $NA = "FR-" + $X.ID + "-FAV-0" + $i.ToString()
        $OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like $X.CODE
        New-ADComputer -Name $NA -Description $desc
    }

    for ($i = 1; $i -le 3; $i++) {
        $desc = $X.CODE
        $NA = "FR-" + $X.ID + "-MAL-0" + $i.ToString()
        $OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like $X.CODE
        New-ADComputer -Name $NA -Description $desc
    }

    for ($i = 1; $i -le 4; $i++) {
        $desc = $X.CODE
        $NA = "FR-" + $X.ID + "-RAV-0" + $i.ToString()
        $OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like $X.CODE
        New-ADComputer -Name $NA -Description $desc
    }   
}


$Test = import-csv -Path "C:\PowerShell\Class-9743\AliShokouhMaghami\Proviences-Fars.csv" -Encoding UTF8

$PCList = Get-ADComputer  -Filter * | Where-Object -Property Name -Like "FR*"

foreach ($item in $Test) {
    foreach ($item in $PCList) {
        if($PCList.Name -eq $Test.ID){
            Move-ADObject 
            } 
    }
}
