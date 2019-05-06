function get-pwsysteminfo {
    param (
        $pcname
    )
  
Get-CimInstance -ComputerName $pcname -ClassName win32_computersystem | Format-Table -property username -AutoSize -Wrap
get-CimInstance -ComputerName $pcname -ClassName win32_operatingsystem | Format-Table -property   caption,osarchitecture,version -AutoSize -Wrap

$c=Get-CimInstance -ComputerName $pcname -ClassName win32_physicalmemory #| Format-Table -property capacity -AutoSize -Wrap
$s=0
foreach ($b in $c){
$s += $b.Capacity
}
$s = $s / (1024*1024*1024)
$s 

$d=Get-CimInstance -ComputerName $pcname -ClassName win32_logicaldisk #|Format-Table -property size -AutoSize -Wrap
$j=0
foreach ($e in $d){
$j += $e.size
}
$j = $j /(1024*1024*1024)
$j  
}

get-pwsysteminfo -pcname server-05

New-Object -TypeName psobject | Add-Member -MemberType NoteProperty -Name osversion -Value $