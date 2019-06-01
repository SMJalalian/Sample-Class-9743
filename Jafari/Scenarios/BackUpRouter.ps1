
#Install-Module -Name Posh-SSH -RequiredVersion 2.0.2
#Install-Module -Name Posh-Cisco

$AllRecords = Get-DnsServerResourceRecord -ComputerName DC -ZoneName PowerShell.Local | Where-Object -Property HostName -Like *KE*Router*
$Cred = Get-Credential
$Command = "copy startup-config tftp:"
$Output = @()


foreach ( $Record in $AllRecords ) {  
    $Name = $Record.HostName.Split(".")
    Write-Host($Name[0] + " IP address information .... ") -ForegroundColor Yellow
    $IP = $Record.RecordData.IPv4Address.IPAddressToString    
    $SSH = New-SSHSession -ComputerName $IP -Credential $Cred -AcceptKey
    $Stream = New-SSHShellStream -Index 0 -Rows 50
    $Stream.WriteLine($Command)    
    $Stream.WriteLine("192.168.30.210")
    $Stream.WriteLine("")
    Start-Sleep -Seconds 3
    
    Get-SSHSession | Remove-SSHSession               
}

