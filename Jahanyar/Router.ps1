$List = Get-DnsServerResourceRecord -ComputerName DC -ZoneName PowerShell.Local | Where-Object -Property hostname -Like GI-*
$Cred = Get-Credential
foreach ( $Record in $List ) {
    $Name = $Record.HostName.Split(".")
    Write-Host($Name[0] + " IP address information .... ") -ForegroundColor Yellow
    $IP = $Record.RecordData.IPv4Address.IPAddressToString    
    $SSH = New-SSHSession -ComputerName $IP -Credential $Cred -AcceptKey
    $Stream = New-SSHShellStream -Index 0 -Rows 50
    $Stream.WriteLine("sh ip int bri")
    Start-Sleep -Seconds 5
    $Stream.Read()   
    Get-SSHSession | Remove-SSHSession
}