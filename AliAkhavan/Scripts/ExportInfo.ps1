$osinfo = Get-CimInstance Win32_OperatingSystem 
$RAMinfo = Get-CimInstance Win32_PhysicalMemory
$hardinfo = Get-CimInstance Win32_DiskDrive
$computersys = Get-CimInstance Win32_ComputerSystem

$osinfo.Caption
$osinfo.OSType
$osinfo.Version
$RAminfo.Capacity
$hardinfo.Size
$computersys.UserName
