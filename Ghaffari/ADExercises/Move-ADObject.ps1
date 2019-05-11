Clear-Host
$AllCity = Import-Csv -Path "C:\Users\0943355478\Documents\PowerShell\class-9743\Ghaffari\Resources\ProviencesFinal.csv" -Encoding UTF8

$ComputerList = Get-ADComputer -Filter * | Where-Object -Property name -Like "*AZ*"
foreach ($Computer in $ComputerList) {
    foreach ($City in $AllCity){
        if ($Computer.Name.Substring(3,3) -eq $City.TAG){
            $Name = "*" + $City.Code + "*"
            $OU = Get-ADOrganizationalUnit -Filter * | Where-Object -Property name -Like $Name
            $TargetPath = "OU=Computer," + $OU.DistinguishedName
            $Computer | Move-ADObject -TargetPath $TargetPath
        }
    
    }
}