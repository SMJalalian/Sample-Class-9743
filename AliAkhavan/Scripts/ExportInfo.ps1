Get-WmiObject -Query “SELECT * FROM Win32_LogicalDisk”


Get-CimInstance Win32_OperatingSystem | Select-Object  Caption, InstallDate, ServicePackMajorVersion, OSArchitecture, BootDevice,  BuildNumber, CSName | FL