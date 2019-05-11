function get-pwsysteminfo {
    param (
        $pcname
    )
  
$x= Get-CimInstance -ComputerName $pcname -ClassName win32_computersystem #| Format-Table -property username -AutoSize -Wrap
$z= get-CimInstance -ComputerName $pcname -ClassName win32_operatingsystem #| Format-Table -property   caption,osarchitecture,version -AutoSize -Wrap

$c=Get-CimInstance -ComputerName $pcname -ClassName win32_physicalmemory #| Format-Table -property capacity -AutoSize -Wrap
$s=0
foreach ($b in $c){
$s += $b.Capacity
}
$s = $s / (1024*1024)


$d=Get-CimInstance -ComputerName $pcname -ClassName win32_logicaldisk #|Format-Table -property size -AutoSize -Wrap
$j=0
foreach ($e in $d){
$j += $e.size
}
$j = $j /(1024*1024*1024)


$x.username
$z.CSName
$z.Caption
$z.OSArchitecture
$z.Version
$s
$j

$obj = New-Object -TypeName psobject | Add-Member -MemberType NoteProperty -Name "username" -Value $x
$obj = New-Object -TypeName psobject | Add-Member -MemberType NoteProperty -Name "version" -Value $z
$obj = New-Object -TypeName psobject | Add-Member -MemberType NoteProperty -Name "caption" -Value $z
$obj = New-Object -TypeName psobject | Add-Member -MemberType NoteProperty -Name "osarchitecture" -Value $z
$obj = New-Object -TypeName psobject | Add-Member -MemberType NoteProperty -Name "capacity" -Value $s
$obj = New-Object -TypeName psobject | Add-Member -MemberType NoteProperty -Name "size" -Value $j
$obj = New-Object -TypeName psobject | Add-Member -MemberType NoteProperty -Name "CSName" -Value $1

return $obj

}
get-pwsysteminfo -pcname server-06





