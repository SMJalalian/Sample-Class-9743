Clear-Host
$CSV = import-csv -Path "C:\Users\administrator\Desktop\Az_sh0.csv" -Encoding UTF8
$CSVCom = import-csv -Path "C:\Users\administrator\Desktop\Computer.csv" 
$cnt = 0

foreach ($itemCity in $CSV) {    
    foreach ($itemCom in $CSVCom){
        for ($i=1; $i -le $itemCom.Num ; $i++) {
        if($i -lt 10)
        {
            $Name= "AS-" + $itemCity.Tag +"-" + $itemCom.Sec + "-0" + $i
        }
        else
        {
            $Name= "AS-" + $itemCity.Tag +"-" + $itemCom.Sec  + "-" + $i
        }
        
        $Name
        New-ADComputer -name $Name -Description $itemCity.Code
        $cnt++
        }
    }  
    $cnt
}
