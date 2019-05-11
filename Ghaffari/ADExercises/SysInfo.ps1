Clear-Host
function FunctionName {
    param (
        $98ComputerName
    )
    #$Computers = Import-Csv -Path "C:\Users\0943355478\Documents\PowerShell\class-9743\Ghaffari\Resources\Computer.csv" -Encoding UTF8
    #$Computers = Get-ADComputer -SearchBase "" -Filter *
    #foreach($Computer in $Computers){
    #    $CN = Get-CimInstance -ComputerName $Computer
    #}
    $CN = Get-CimInstance -ComputerName $98ComputerName
    "ComputerName : "+$CN

}
