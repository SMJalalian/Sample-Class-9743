Clear-Host
$Today = Get-Date
$Target = $Today.AddDays(-10)
$AllRecords = Get-DnsServerResourceRecord -ZoneName PowerShell.Local
foreach ( $Record in $AllRecords ) {
    $IP = $Record.RecordData.IPv4Address.IPAddressToString
    
    if ( ( $Record.Timestamp -le $Target ) -and ($Record.Timestamp ) -and ($IP.Contains("192.168."))) {
        Remove-DnsServerResourceRecord -ZoneName PowerShell.Local -InputObject $Record -Force        
    }
}
