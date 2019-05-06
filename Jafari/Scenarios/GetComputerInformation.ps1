#$Info = New-Object -TypeName psobject
#$Info | Add-Member -MemberType NoteProperty -Name RAMSIZE -value (Get-CimInstance CIM_PhysicalMemory).Capacity
(Get-CimInstance CIM_ComputerSystem).Name
(Get-CimInstance CIM_OperatingSystem).Caption
(Get-CimInstance CIM_OperatingSystem).Version
(Get-CimInstance CIM_OperatingSystem).OSArchitecture
(Get-CimInstance CIM_DiskDrive).Size/1024/1024/1024
(Get-CimInstance CIM_ComputerSystem).username


