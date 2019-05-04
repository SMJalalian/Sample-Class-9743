$City = import-csv -Path "C:\local repos\class-9743\AliAkhavan\Scripts\my town.csv" -Encoding UTF8
$Dynamicaddress = import-csv -Path "I:\pws\class-9743\Class-9743-2\AliAkhavan\Scripts\finalinfo.csv" -Encoding UTF8

foreach ( $cc in $City )
{
foreach ($info in $Dynamicaddress) 
{
    for ($i = 0  ; $i -le $info.Count ; $i++ ) 
    {
        if ($i -le 10) {
$name = "SI" + "-" + $cc.TAG + "-" + $info.name +  "-"  + 0 + $i.ToString()
        }
        else {
$name = "SI" + "-" + $cc.TAG + "-" + $info.name +  "-"  +  $i.ToString()
        }

    New-ADComputer -name $name -Description $cc.Code.ToString()

    }

}   
    }
