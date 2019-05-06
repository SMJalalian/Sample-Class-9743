$myCity = import-csv -Path "C:\local repos\class-9743\AliAkhavan\Scripts\my town.csv" -Encoding UTF8
$Mylist = Get-ADComputer -Filter * | Where-Object -Property name -Like "si*"

foreach ($list in $Mylist) {
    foreach ($city in $myCity) {
        if ($Mylist.name.substring(3,3) -eq $city.TAG) {
Move-ADObject -name $list -Path ""


    }    
        }
}