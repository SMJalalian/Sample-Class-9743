$City = import-csv -Path "C:\local repos\class-9743\AliAkhavan\Scripts\my town.csv" -Encoding UTF8
$Dynamicaddress = import-csv -Path "I:\pws\class-9743\Class-9743-2\AliAkhavan\Scripts\finalinfo.csv" -Encoding UTF8

foreach ($info in $Dynamicaddress) 
{
    for ($i = 0  ; $i -le $info.Count ; $i++ ) 
    {
foreach ( $cc in $City )
 {
   
$name = "SI" + "-" + $cc.TAG + "-" + "FAV" +  "-"  + $J + $i.ToString()

if ($i -ge 9) {
    $J++
}
    New-ADComputer -name $name -Description $cc.Code.ToString()

    }
  
foreach ( $cc in $City )
 {
   
$name = "SI" + "-" + $cc.TAG + "-" + "MAL" +  "-"  + $J + $i.ToString()

if ($i -ge 9) {
    $J++
}
    New-ADComputer -name $name -Description $cc.Code.ToString()

    } 
  foreach ( $cc in $City )
   {
     
  $name = "SI" + "-" + $cc.TAG + "-" + "RAV" +  "-"  + $J + $i.ToString()
  
  if ($i -ge 9) {
      $J++
  }
      New-ADComputer -name $name -Description $cc.Code.ToString()
  
      }
  }   
    }