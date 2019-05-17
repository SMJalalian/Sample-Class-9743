Clear-Host

$x=New-Object -TypeName psobject

####################################################################
$operatingsystem= Get-WMIObject win32_operatingsystem 

$Cap=$operatingsystem.Caption
$x | Add-Member -MemberType NoteProperty -Name MyCap -Value $Cap

$ver=$operatingsystem.Version
$x | Add-Member -MemberType NoteProperty -Name MyVer -Value $Ver

$OSA=$operatingsystem.OSArchitecture
$x | Add-Member -MemberType NoteProperty -Name MyOSA -Value $OSA
######################################################################
$physicalmemory = Get-WMIObject win32_physicalmemory

$Capa = $physicalmemory.Capacity
$x | Add-Member -MemberType NoteProperty -Name MyCapa -Value $Capa
######################################################################
$ComputerSystem=Get-WMIObject Win32_ComputerSystem

$UN = $ComputerSystem.UserName
$x | Add-Member -MemberType NoteProperty -Name MyUN -Value $UN
######################################################################
$diskdrive = Get-WMIObject win32_diskdrive

$si=$diskdrive.size
$x | Add-Member -MemberType NoteProperty -Name Mysi -Value $si
######################################################################
$x
