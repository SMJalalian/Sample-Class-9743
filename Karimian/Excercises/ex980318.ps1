Write-Host("###########################################################1")
 
$UserList = Get-ADUser -Filter * -Properties lastLogonDate
foreach ($ItemUser in $UserList)
{
 #   $UserList
    $ItemUser.Name
    $itemuser.lastLogonDate
}

Write-Host("###########################################################2")
 
$logonDate = New-Object System.DateTime(2019, 01, 01)
Get-ADUser -filter { lastLogon -ge $logonDate }


Write-Host("###########################################################3")
$UserList = Get-ADUser -Filter * -Properties lastlogon   
foreach ($ItemUser in $UserList)
{
    if($itemuser.lastLogon -le $logonDate)
    {
        $ItemUser.Name
        $itemuser.LogonDate
    }
}



