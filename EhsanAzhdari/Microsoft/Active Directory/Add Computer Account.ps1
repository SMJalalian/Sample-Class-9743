Clear-Host
$AllCity = Import-Csv -Path "C:\Users\0820146439\Documents\PowerShell\class-9743\EhsanAzhdari\Resources\ProviencesFinal.csv" -Encoding UTF8

foreach ($City in $AllCity) {
    for ($i = 1; $i -le 2; $i++) {
        $ComputerName = "ES" + "-" + $City.TAG.ToString() + "-" + "FAV" + "-" + "0" + $i.ToString() 
        New-ADComputer -Name $ComputerName -Description $City.Code.ToString()
    }

    for ($i = 1; $i -le 3; $i++) {
        $ComputerName = "ES" + "-" + $City.TAG.ToString() + "-" + "MAL" + "-" + "0" + $i.ToString() 
        New-ADComputer -Name $ComputerName -Description $City.Code.ToString()
    }

    for ($i = 1; $i -le 4; $i++) {
        $ComputerName = "ES" + "-" + $City.TAG.ToString() + "-" + "RAV" + "-" + "0" + $i.ToString() 
        New-ADComputer -Name $ComputerName -Description $City.Code.ToString()
    }
}
