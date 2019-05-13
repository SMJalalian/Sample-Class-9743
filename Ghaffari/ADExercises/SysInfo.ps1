Clear-Host
function Get-98SysInfo {
    param (
        $ComputerName
    )
    #$Computers = Import-Csv -Path "C:\Users\0943355478\Documents\PowerShell\class-9743\Ghaffari\Resources\Computer.csv" -Encoding UTF8
    #$Computers = Get-ADComputer -SearchBase "" -Filter *
    #foreach($Computer in $Computers){
    #    $CN = Get-CimInstance -ComputerName $Computer
    #}
    New-Object -TypeName 

    $CN = Get-CimInstance -ComputerName $ComputerName
    "ComputerName : "+$CN


    $CS = Get-CimInstance CIM_ComputerSystem -ComputerName $PCName
    $OS = Get-CimInstance CIM_OperatingSystem -ComputerName $PCName
    $DD = Get-CimInstance CIM_DiskDrive -ComputerName $PCName
    
    $CS.Name
    $CS.username
    $OS.Version
    $OS.OSArchitecture
    $OS.Caption
    $DD.size/1024/1024/1024 


}
$info = Get-98SysInfo -ComputerName ""
$info