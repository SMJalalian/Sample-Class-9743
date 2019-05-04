Clear-Host

$CSV = import-csv -Path "C:\Users\0946907374\Desktop\Az_sh0.csv" -Encoding UTF8
$ComList = Get-ADComputer -Filter * | Where-Object -Property Name -Like AS*
$ComList
foreach ( $ItemCom in $ComList ) {
#    if ( $ItemCom.DistinguishedName.Substring(0,9) -ne "OU=900000") {
#        $ItemCom.DistinguishedName
#    }    
    
}



