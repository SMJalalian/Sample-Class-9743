$osinfo = Get-CimInstance Win32_OperatingSystem 
$RAMinfo = Get-CimInstance Win32_PhysicalMemory
$hardinfo = Get-CimInstance Win32_DiskDrive
$computersys = Get-CimInstance Win32_ComputerSystem

$osinfo.Caption
$osinfo.OSType
$osinfo.Version
$RAminfo.Capacity

<<<<<<< HEAD
Get-CimInstance Win32_OperatingSystem | Select-Object  Caption, InstallDate, ServicePackMajorVersion, OSArchitecture, BootDevice,  BuildNumber, CSName,  | FL
=======

$computersys.UserName
>>>>>>> d2764a1c74f8670fe7a396a1e727c598a05de656
