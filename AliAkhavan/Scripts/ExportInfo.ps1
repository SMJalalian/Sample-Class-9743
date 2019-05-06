function Get-pwsysteminfo {
    param (
        $Pcname
    )
    $osinfo      = Get-CimInstance $Pcname Win32_OperatingSystem 
    $RAMinfo     = Get-CimInstance $Pcname Win32_PhysicalMemory
    $hardinfo    = Get-CimInstance $Pcname Win32_DiskDrive
    $computersys = Get-CimInstance $Pcname Win32_ComputerSystem

$osinfo.Caption
$osinfo.OSType
$osinfo.Version
$osinfo.OSArchitecture
$RAminfo.Capacity


$computersys.UserName

}

