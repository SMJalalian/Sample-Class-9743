$List = Get-ADUser -SearchBase "OU=Class Objects,DC=PowerShell,DC=Local" -Filter *
foreach ( $User in $List ){
    $Pass = $User.SamAccountName + "@qaz!!"
    $SecPass = ConvertTo-SecureString -String $Pass -AsPlainText -Force
    #$User | Set-ADAccountPassword -NewPassword $Pass
}