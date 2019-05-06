function Get-pwsysteminfo {
    param (
        $Pcname
    )
    $osinfo      = Get-CimInstance $Pcname Win32_OperatingSystem 
    #$RAMinfo     = Get-CimInstance $Pcname Win32_PhysicalMemory
    #$hardinfo    = Get-CimInstance $Pcname Win32_DiskDrive
    $computersys = Get-CimInstance $Pcname Win32_ComputerSystem
    $totalmemory = Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum | Foreach {"{0:N2}" -f ([math]::round(($_.Sum / 1GB),2))}
    $hdd = Get-CimInstance Win32_DiskDrive | Measure-Object -Property size -Sum | Foreach {"{0:N2}" -f ([math]::round(($_.Sum / 1GB),2))}
    

$osinfo.Caption
$osinfo.OSType
$osinfo.Version
$osinfo.OSArchitecture
$totalmemory
$hardinfo
$computersys.UserName

}