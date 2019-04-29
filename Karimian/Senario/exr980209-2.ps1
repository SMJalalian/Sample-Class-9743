Clear-Host
$CSV = import-csv -Path "C:\Users\0946907374\Desktop\Az_sh0.csv" -Encoding UTF8
$cnt = 0

foreach ($item in $CSV) {    
    
    for ($FAV=1; $FAV -le 2; $FAV++) {
        $Name= "AS-" + $item.Tag + "-FAV-0" + $FAV
        $Name
        New-ADComputer -name $Name -Description 980000
        $cnt++
    }   
    for ($MAl=1; $MAL -le 3; $MAl++) {
        $Name= "AS-" + $item.Tag + "-MAL-0" + $MAL
        $Name
        New-ADComputer -name $Name -Description 980000
        $cnt++
    } 
    for ($RAV=1; $RAV -le 4; $RAV++) {
        $Name= "AS-" + $item.Tag + "-RAV-0" + $RAV
        $Name
        New-ADComputer -name $Name -Description 980000
        $cnt++
    } 
    $cnt
    
}
