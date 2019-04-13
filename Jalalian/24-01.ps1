function Get-Fact {
    param (
        $InputNumber,
        [int]$TestMandatory
    )
    [int64] $f = 1
    for ($i = 1; $i -le $InputNumber; $i++) {
        $f *= $i
    }
    return $f
}
Get-Fact -InputNumber 5
#*********************************************

Get-Fact -InputNumber $Number
for ($i = 2; $i -le 20; $i+=2) {
    [int64]$X = Get-Fact -InputNumber $i
    Write-Host("Factorial of Number $i is equal to : "+$X.ToString())
}

#************************************************************

foreach ($PC in $PCList) {
    foreach ($User in $UserList) {
        Invoke-Command -ComputerName $PC -ArgumentList $User,$X,$Y -ScriptBlock { Remove-LocalUser -Name $args[0] }
    }  
}

#**********************************************