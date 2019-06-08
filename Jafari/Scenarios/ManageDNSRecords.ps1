Clear-Host
$Today = Get-Date
[int] $Day = Read-Host("Days of The DNS Records Should Be Kept")
$Target = $Today.AddDays(-1 * $Day)
$AllRecords = Get-DnsServerResourceRecord -ZoneName PowerShell.Local
foreach ( $Record in $AllRecords ) {
    $IP = $Record.RecordData.IPv4Address.IPAddressToString
    
    if ( ( $Record.Timestamp -le $Target ) -and ($Record.Timestamp ) -and ($IP.Contains("192.168."))) {
        Remove-DnsServerResourceRecord -ZoneName PowerShell.Local -InputObject $Record -Force        
    }
}
