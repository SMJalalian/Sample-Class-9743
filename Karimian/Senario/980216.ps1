Clear-Host

$operatingsystem= Get-WMIObject win32_operatingsystem 
$Cap=$operatingsystem.Caption
$Cap
$ver=$operatingsystem.Version
$ver
$OSA=$operatingsystem.OSArchitecture
$OSA

$physicalmemory = Get-WMIObject win32_physicalmemory
$Capa = $physicalmemory.Capacity
$Capa

$diskdrive=Get-WMIObject win32_diskdrive
$si=$diskdrive.size
$si

$ComputerSystem=Get-WMIObject Win32_ComputerSystem
$UN = $ComputerSystem.UserName
$UN
