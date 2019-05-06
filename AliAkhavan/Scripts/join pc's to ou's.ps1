$AllCity = Import-Csv -Path "C:\Users\0820146439\Documents\PowerShell\class-9743\EhsanAzhdari\mytown.csv" -Encoding UTF8

$ComputerList = Get-ADComputer -Filter * | Where-Object -Property name -Like "ES*"
foreach ($Computer in $ComputerList) {
    foreach ($City in $AllCity){
        if ($Computer.Name.Substring(3,3) -eq $City.TAG){
            $Name = "*" + $City.Code + "*"
            $OU = Get-ADOrganizationalUnit -Filter * | Where-Object -Property name -Like $Name
            $TargetPath = "OU=Computer," + $OU.DistinguishedName
            #Write-Host($Computer.Name + " --->>> " + $TargetPath )
            $Computer | Move-ADObject -TargetPath $TargetPath
        }
    
    }
}
