#Add REcord A router to dns server

Add-DnsServerResourceRecordA -Name SI-01.Router -ZoneName Powershell.local -IPv4Address 192.168.30.22 -ComputerName DC.powershell.local
Add-DnsServerResourceRecordA -Name SI-02.Router -ZoneName Powershell.local -IPv4Address 192.168.30.23 -ComputerName DC.powershell.local