#**************************************************
$X = New-Object System.Management.Automation.PSCredential("username", $secpasswd)

Invoke-Command -Credential $x
#**************************************************
New-ADOrganizationalUnit Temp
New-ADOrganizationalUnit X1 -Path "OU=Temp,DC=PowerShell,DC=Local"
Set-ADOrganizationalUnit -Identity "OU=Temp,DC=PowerShell,DC=Local" -Description "Temp Description"
#**************************************************
New-ADGroup G1 Global
Set-ADGroup -Identity "DN" -Description "sadadad"
$List = Get-ADUser -Filter * | Where-Object -Property Name -Like "ع*"
foreach ( $Item in $List ) {
    Add-ADGroupMember -Identity "CN=G1,CN=Users,DC=PowerShell,DC=Local" -Members $Item.Name
}
Get-ADGroup -Filter * | Where-Object -Property Name -Like G1* | Remove-ADGroup -Confirm:$false
#******************************************************************
$Test = import-csv -Path "C:\Users\0944661653\Desktop\Final.csv" -Encoding UTF8
foreach ( $X in $Test ) {
    $X.شهر

}
#******************************************************************
for ( $i = 900100 ; $i -le 902000 ; $i+=100 ) {
    New-ADOrganizationalUnit -Name $i.ToString() -Path "OU=900000,OU=Domain Objects,DC=PowerShell,DC=Local"
}
$OUList = Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like 90*
foreach ( $OU in $OUList ) {
    if ( $OU.DistinguishedName.Substring(0,9) -ne "OU=900000") {
        $OU.DistinguishedName
    }    
    
}