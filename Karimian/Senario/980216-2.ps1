
function Get-SKESystemInfo {
    param (
        $ParCom
    )
    
$y= Get-WMIObject win32_operatingsystem -ComputerName $ParCom
$Name=$y.Caption
$Name
$version=$y.Version
$version
$OP=$y.OSArchitecture
$OP

$z = Get-WMIObject win32_physicalmemory -ComputerName $ParCom
$Cap = $z.Capacity
$Cap

$k=Get-WMIObject win32_diskdrive -ComputerName $ParCom
$HS=$k.size
$HS

$x=Get-WMIObject Win32_ComputerSystem -ComputerName $ParCom
$UN = $x.UserName
$UN
}

Get-SKESystemInfo server-07

