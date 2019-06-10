Clear-Host
$Today = Get-Date
[int] $Day = Read-Host("Treshold of inactive Days")
$AllRecords = Search-ADAccount -AccountInactive -TimeSpan $Day | Sort Name
$DN = "OU=Users,OU=InActive Objects,DC=PowerShell,DC=Local"
foreach ( $Record in $AllRecords ) {     
   Disable-ADAccount $Record
   Move-ADObject $Record $DN
}

#Get-ADUser -Properties “LastLogonDate”

