Get-CimClass CIM_PhysicalMemory | Select-Object -ExpandProperty CimClassProperties

Get-CimClass CIM_Service | Select-Object -ExpandProperty CimClassMethods
Get-CimClass WIN32_Service | Select-Object -ExpandProperty CimClassMethods
Get-CimInstance -ClassName WIN32_Service -Filter "Name = 'Spooler'" | Invoke-CimMethod -MethodName StopService

$List = Get-CimClass
$List.Count

#********************************************
$Output = @()
$ComputerList = "Teacher","DC","SCCM"
foreach ($PC in $ComputerList) {
    $X = New-Object -TypeName psobject
    $X | Add-Member -MemberType NoteProperty -Name PCName -Value "PC-$PC"
    $X | Add-Member -MemberType NoteProperty -Name OSVersion -Value "Windows 10-$PC"
    $Output += $X
}





