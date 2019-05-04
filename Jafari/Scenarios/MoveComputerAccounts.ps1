$Province = import-csv -Path "C:\Projects\class-9743\Jafari\Scenarios\Provinces.csv" -Encoding UTF8
$ComputerLists = Get-ADComputer -Filter * | Where-Object -Property Name -Like KE-*
foreach ( $Computer in $ComputerLists ) {
    $CName = $Computer.Name
    foreach ( $City in $Province ) {
        if($CName.Contains($City.Tag)){
            $DN = "OU=Computers,"
            $DN += Get-ADOrganizationalUnit -Filter * | Where-Object -Property Name -Like $City.Code
            Move-ADObject $Computer $DN        
        }    
    }
}