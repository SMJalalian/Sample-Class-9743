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
$memory = $memory / (1024*1024)



$H = Get-CimInstance -ComputerName $PCName win32_diskdrive #| Select-Object size
$Hard = 0
foreach ($item in $H)
{
    $hard += $item.size
}
$hard = $hard / (1024*1024*1024)


$L = Get-CimInstance -ComputerName $PCName win32_computersystem # |Select-Object username


##$os.Caption
##$os.Version
##$memory
##$Hard
##$L.UserName

$obj = New-Object -TypeName psobject 
$obj | Add-Member -MemberType NoteProperty -Name "username" -Value $L.UserName
$obj | Add-Member -MemberType NoteProperty -Name "version" -Value $os.Version
$obj | Add-Member -MemberType NoteProperty -Name "caption" -Value $os.Caption
$obj | Add-Member -MemberType NoteProperty -Name "osarchitecture" -Value $os.OSArchitecture
$obj | Add-Member -MemberType NoteProperty -Name "capacity" -Value $Hard
$obj | Add-Member -MemberType NoteProperty -Name "size" -Value $memory
$obj | Add-Member -MemberType NoteProperty -Name "CSName" -Value $os.CSName

return $obj
}


Get-Systeminfo -PCName Server-05


