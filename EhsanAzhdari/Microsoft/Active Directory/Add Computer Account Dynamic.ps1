Clear-Host
$AllCity = Import-Csv -Path "C:\Users\0820146439\Documents\PowerShell\class-9743\EhsanAzhdari\Resources\ProviencesFinal.csv" -Encoding UTF8
$AllComputer = Import-Csv -Path "C:\Users\0820146439\Documents\PowerShell\class-9743\EhsanAzhdari\Resources\Computer.csv" -Encoding UTF8

foreach ($City in $AllCity) {
    foreach ($Computer in $AllComputer) {
        for ($i = 1; $i -le $Computer.Number ; $i++) {
            $ComputerName = "ES" + "-" + $City.TAG.ToString() + "-" + $Computer.Name.ToString() + "-" + "0" + $i.ToString() 
            New-ADComputer -Name $ComputerName -Description $City.Code.ToString()
        }
    }
    
}