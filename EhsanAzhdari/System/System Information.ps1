Clear-Host
$Memory = Get-CimInstance -ClassName CIM_PhysicalMemory 
$Memory.Capacity

$OS = Get-CimInstance Win32_OperatingSystem
$OS.Version
$OS.Caption
$OS.OSArchitecture

$Disk = Get-CimInstance Win32_DiskDrive 
$Disk.Size

$UserName = Get-CimInstance win32_computersystem
$UserName.UserName