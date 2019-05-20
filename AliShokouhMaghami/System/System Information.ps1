function Get-PWSystemInfo {
    param (
        $PCName
    )
$Memory = Get-CimInstance -ClassName CIM_PhysicalMemory -ComputerName $PCName
$SUMmemory = 0
foreach($item in $Memory){
    $SUMmemory += $item.Capacity
}
$SUMmemory

$Disk = Get-CimInstance -ClassName Win32_DiskDrive -ComputerName $PCName
$SUMDisk = 0
foreach($item in $Disk){
    $SUMDisk += $item.Size
}
$SUMDisk


$OS = Get-CimInstance Win32_OperatingSystem -ComputerName $PCName
$OS.Version
$OS.Caption
$OS.OSArchitecture

$UserName = Get-CimInstance win32_computersystem -ComputerName $PCName
$UserName.UserName
}

Get-PWSystemInfo -PCName server-02