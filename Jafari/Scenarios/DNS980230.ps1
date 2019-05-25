Enter-PSSession dc
Add-DnsServerResourceRecordA -Name KE-01.Router -ZoneName PowerShell.Local -IPv4Address 192.168.30.72
Add-DnsServerResourceRecordA -Name KE-02.Router -ZoneName PowerShell.Local -IPv4Address 192.168.30.73