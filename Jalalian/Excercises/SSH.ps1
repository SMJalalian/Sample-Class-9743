Clear-Host
$Today = Get-Date
$Target = $Today.AddDays(-10)
#Add-DnsServerResourceRecordA  -ZoneName Powershell.Local -Name R1.Router -IPv4Address 192.168.30.125
$AllRecords = Get-DnsServerResourceRecord -ZoneName PowerShell.Local | Where-Object -Property HostName -Like *Router*


#foreach ( $Record in $AllRecords ) {
#    
#    #Write-Host ($Record.HostName + " ----> " + $Record.Timestamp )
#    
#    if ( ( $Record.Timestamp -le $Target ) -and ( $Record.Timestamp ) ) {
#        $Record.HostName
#    }
#}




Clear-Host
$Today = Get-Date
$Target = $Today.AddDays(-10)
#Add-DnsServerResourceRecordA  -ZoneName Powershell.Local -Name R1.Router -IPv4Address 192.168.30.125
$AllRecords = Get-DnsServerResourceRecord -ZoneName PowerShell.Local | Where-Object -Property HostName -Like *Router*
foreach ( $Record in $AllRecords ) {
    $Record.RecordData.IPv4Address.IPAddressToString
    
}


Install-Module -Name Posh-SSH -RequiredVersion 2.0.2
Install-Module -Name Posh-Cisco



Clear-Host
#$Cred = Get-Credential
$AllRecords = Get-DnsServerResourceRecord -ZoneName PowerShell.Local | Where-Object -Property HostName -Like *Router*
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



