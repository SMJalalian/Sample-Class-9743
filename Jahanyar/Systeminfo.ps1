function Get-Systeminfo {
    param (
        $PCName
    )

$os = Get-CimInstance -ComputerName $PCName  Win32_OperatingSystem #| Select-Object osversion, caption, OSArchitecture 


$R = Get-CimInstance -ComputerName $PCName Win32_PhysicalMemory #| Select-Object capacity


$memory = 0
foreach ($item in $R)
{
    $memory += $item.Capacity 
}
$memory = $memory / (1024*1024*1024)



$H = Get-CimInstance -ComputerName $PCName win32_diskdrive #| Select-Object size
$Hard = 0
foreach ($item in $H)
{
    $hard += $item.size
}
$hard = $hard / (1024*1024*1024)


$L = Get-CimInstance -ComputerName $PCName win32_computersystem # |Select-Object username


$os.OSArchitecture
$os.Caption
$os.Version
$memory
$Hard
$L.UserName
}

Get-Systeminfo -PCName Server-04