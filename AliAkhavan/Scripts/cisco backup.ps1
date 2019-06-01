$RouterList = Get-DnsServerResourceRecord -ZoneName PowerShell.local -ComputerName DC.powershell.local | Where-Object -Property Hostname -Like SI*
$Cre = Get-Credential
foreach ($Router in $RouterList) {
    $IP = $Router.RecordData.IPv4Address.IPAddressToString
    New-SSHSession -ComputerName $IP -Credential $Cre -AcceptKey
    $Stream = New-SSHShellStream -Index 0 -Rows 50
    $Stream.WriteLine("copy startup-config tftp:")
    $Stream.WriteLine("192.168.30.210")
    $Stream.WriteLine("")
    Start-Sleep  -Seconds 5
    Get-SSHSession | Remove-SSHSession
}