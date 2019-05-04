$list = Import-Csv -Path "C:\Users\1050150309\LocalRepo\class-9743\Jahanyar\Gilan\gilan.csv" -Encoding UTF8
foreach ($item in $list)
{
   for ($i = 1; $i -lt 3; $i++)
   { 
      $X = "GI-" + $item.tag + "-FAV-0" + $i.ToString()
      $des = $item.Code
      New-ADComputer $X  -Description $Des 
   }

  for ($i = 1; $i -lt 4; $i++)
   { 
      $X = "GI-" + $item.tag + "-MAL-0" + $i.ToString()
      $des = $item.Code
      New-ADComputer $X -Description $Des 
   }


  for ($i = 1; $i -lt 5; $i++)
   { 
      $X = "GI-" + $item.tag + "-RAV-0" + $i.ToString()
      $des = $item.Code
      New-ADComputer $X -Description $Des 
   }

}