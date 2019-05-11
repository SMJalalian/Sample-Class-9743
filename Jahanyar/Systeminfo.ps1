function Get-BSysteminfo {
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

    $info = New-Object psobject
    $info | Add-Member -MemberType NoteProperty -Name "OSName" -Value $os.CSName
    $info | Add-Member -MemberType NoteProperty -Name "OSVersio" -Value $os.Version
    $info | Add-Member -MemberType NoteProperty -Name "OSArch" -Value $os.OSArchitecture
    $info | Add-Member -MemberType NoteProperty -Name "OSCaption" -Value $os.Caption
    $info | Add-Member -MemberType NoteProperty -Name "Memory" -Value $memory
    $info | Add-Member -MemberType NoteProperty -Name "Hard" -Value $Hard
    $info | Add-Member -MemberType NoteProperty -Name "Logged in user" -Value $L.UserName
return $info
} 
$PCList = Get-ADComputer -Filter * | Where-Object -Property name -Like "server*"
$PCList += Get-ADComputer -Filter * | Where-Object -Property name -Like "DC"
$out = @()
$TotalRam = 0
$TotalHard = 0
foreach ($item in $PCList)
{

    $Test = Get-BSysteminfo -PCName $item.Name
    $out += $Test
    $TotalRam += $Test.Memory
    $TotalHard += $Test.Hard   
}
$TotalRam
$TotalHard 
$out | Export-Csv -Path "C:\Users\1050150309\LocalRepo\class-9743\Jahanyar\File.csv" -Encoding UTF8

