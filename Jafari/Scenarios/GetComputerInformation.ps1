#$Info = New-Object -TypeName psobject
#$Info | Add-Member -MemberType NoteProperty -Name RAMSIZE -value (Get-CimInstance CIM_PhysicalMemory).Capacity
function Get-PWSystemInfo {
    param (
        $PCName
    )
    (Get-CimInstance CIM_ComputerSystem -ComputerName $PCName).Name
    (Get-CimInstance CIM_OperatingSystem -ComputerName $PCName).Caption
    (Get-CimInstance CIM_OperatingSystem -ComputerName $PCName).Version
    (Get-CimInstance CIM_OperatingSystem -ComputerName $PCName).OSArchitecture
    (Get-CimInstance CIM_DiskDrive -ComputerName $PCName).Size/1024/1024/1024
    (Get-CimInstance CIM_ComputerSystem -ComputerName $PCName).username  
}

Get-PWSystemInfo server-08




