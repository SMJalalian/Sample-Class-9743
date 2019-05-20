Clear-Host
$list = Get-ADComputer -Filter * | Where-Object  -Property name -Like "GI-*"
$CityList = Import-Csv -Path "C:\Users\1050150309\LocalRepo\class-9743\Jahanyar\Gilan\gilan.csv" -Encoding UTF8
foreach ($item in $list)
{
    $ComName = $item.Name.Split("-")
    foreach ( $City in $CityList ) {
        if ( $ComName[1] -eq $City.Tag ) {
            #Write-Host($ComName[1] + " ----> " + $City.City + "   " + $City.Code)
            $OUname = "*"+$city.Code+"*"
            $TargetOU = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like $ouname
            $DN = "OU=Computers," + $TargetOU.DistinguishedName
            #$DN
            $item | Move-ADObject -TargetPath $DN
                     
            }
    }
}


