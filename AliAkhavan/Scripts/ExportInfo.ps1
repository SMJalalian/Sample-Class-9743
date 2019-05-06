function Get-pwsysteminfo {
    param (
        $Pcname
    )
    $osinfo      = Get-CimInstance -ComputerName $Pcname Win32_OperatingSystem 
    $computersys = Get-CimInstance -ComputerName $Pcname Win32_ComputerSystem
    $totalmemory = Get-CimInstance Win32_PhysicalMemory -ComputerName $Pcname | Measure-Object -Property capacity -Sum | Foreach {"{0:N2}" -f ([math]::round(($_.Sum / 1GB),2))}
    $hardinfo    = Get-CimInstance Win32_DiskDrive -ComputerName $Pcname | Measure-Object -Property size -Sum | Foreach {"{0:N2}" -f ([math]::round(($_.Sum / 1GB),2))}
    

$osinfo.Caption
$osinfo.OSType
$osinfo.Version
$osinfo.OSArchitecture
$totalmemory
$hardinfo
$computersys.UserName

}
Get-pwsysteminfo -Pcname Server-04