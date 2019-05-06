Clear-Host
# New-ADOrganizationalUnit -Name 980000 -Path "OU=Domain Objects,DC=PowerShell,DC=Local"
#Get-ADOrganizationalUnit.
$CSV = import-csv -Path "C:\Users\0946907374\Desktop\Az_sh0.csv" -Encoding UTF8
foreach ( $X in $CSV ) {
    #$X.City
    #$X.Pro
    $Test=[math]::floor($x.Code/10000)*10000
    $StrTest=$Test.ToString()
    $StrTest
    $StrCode=$x.Code.ToString()
    $StrCode
  
          
    New-ADOrganizationalUnit -Name "Computer" -Path "OU=$Strcode,OU=$StrTest,OU=Domain Objects,DC=PowerShell,DC=Local" 
    New-ADOrganizationalUnit -Name "Users" -Path "OU=$Strcode,OU=$StrTest,OU=Domain Objects,DC=PowerShell,DC=Local" 
    New-ADOrganizationalUnit -Name "Groups" -Path "OU=$Strcode,OU=$StrTest,OU=Domain Objects,DC=PowerShell,DC=Local" 

}