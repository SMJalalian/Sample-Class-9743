function Get-info {
    param (
        $PCName
    )

$o = Get-CimInstance -ComputerName $PCName  Win32_OperatingSystem #| Select-Object osversion, caption, OSArchitecture 


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




$obj = New-Object -TypeName psobject 
$obj | Add-Member -MemberType NoteProperty -Name "username" -Value $L.UserName
$obj | Add-Member -MemberType NoteProperty -Name "version" -Value $o.Version
$obj | Add-Member -MemberType NoteProperty -Name "caption" -Value $o.Caption
$obj | Add-Member -MemberType NoteProperty -Name "osarchitecture" -Value $os.OSArchitecture
$obj | Add-Member -MemberType NoteProperty -Name "capacity" -Value $Hard
$obj | Add-Member -MemberType NoteProperty -Name "size" -Value $memory
$obj | Add-Member -MemberType NoteProperty -Name "CSName" -Value $o.CSName

return $obj
}


$pc = Get-ADComputer -Filter * | Where-Object -Property name -Like "server"
$pc += Get-ADComputer -Filter * | Where-Object -Property name -Like "DC"
$list = @()
foreach ($item in $pc){
$list += Get-info -PCName $item.Name
}
$list | Export-Csv C:\Users\3422132821\Repos\Class-9743\heydari\info.txt 


