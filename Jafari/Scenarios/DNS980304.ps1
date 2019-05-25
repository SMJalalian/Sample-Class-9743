Install-Module -Name Posh-SSH -RequiredVersion 2.0.2
Install-Module -Name Posh-Cisco

$AllRecords = Get-DnsServerResourceRecord -ComputerName DC -ZoneName PowerShell.Local | Where-Object -Property HostName -Like *KE*Router*
$Cred = Get-Credential
foreach ( $Record in $AllRecords ) {
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