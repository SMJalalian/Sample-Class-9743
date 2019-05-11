Clear-Host

$y= Get-WMIObject win32_operatingsystem 
$Name=$y.Caption
$Name
$version=$y.Version
$version
$OP=$y.OSArchitecture
$OP

$z = Get-WMIObject win32_physicalmemory
$Cap = $z.Capacity
$Cap

$k=Get-WMIObject win32_diskdrive
$HS=$k.size
$HS

$x=Get-WMIObject Win32_ComputerSystem
$UN = $x.UserName
$UN
