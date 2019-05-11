Clear-Host
$Cities = Import-Csv -Path "C:\Users\0943355478\Documents\PowerShell\class-9743\Ghaffari\Resources\ProviencesFinal.csv" -Encoding UTF8
$Computer = Import-Csv -Path "C:\Users\0943355478\Documents\PowerShell\class-9743\Ghaffari\Resources\Computer.csv" -Encoding UTF8

foreach ($City in $Cities) {
    foreach ($Computer in $AllComputer) {
        for ($i = 1; $i -le $Computer.Number ; $i++) {
            if ($i -lt 10) {
                $ComputerName = "AZ" + "-" + $City.TAG.ToString() + "-" + $Computer.Name.ToString() + "-" + "0" + $i.ToString() 
                New-ADComputer -Name $ComputerName -Description $City.Code.ToString()
            }
            else {
                $ComputerName = "AZ" + "-" + $City.TAG.ToString() + "-" + $Computer.Name.ToString() + "-" + $i.ToString() 
                New-ADComputer -Name $ComputerName -Description $City.Code.ToString()
            }
            
        }
    }
    
}