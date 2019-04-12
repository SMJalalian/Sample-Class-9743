$Employee = @()
$Wage = @()
$Output = "Employee               Wage        Extension      NewWage`n"
$Output += "----------            --------    --------       --------`n"
#for($i = 0; $i -lt 500; $i++){
    for($j = 0; $j -lt 500; $j++){
        $Employee += Get-Random -InputObject "Mohammad", "Ali", "Hassan", "Hossein", "Reza", "Saeed", "Rahman", "Rahim", "Akbar", "Kazem", "Mahdi"
        $Wage += Get-Random -Minimum 1000 -Maximum 100000
        if($Wage.GetValue($j) -le 25000){
            $Extention = $Wage.GetValue($j) * 0.05            
        } elseif($Wage.GetValue($j) -gt 35000){
            $Extention = $Wage.GetValue($j) * 0.1            
        }else {
            $Extention = $Wage.GetValue($j) * 0.07            
        }
        $NewWage = $Wage.GetValue($j) + $Extention
        $Output += $Employee.GetValue($j) + "                   " + $Wage.GetValue($j) + "          " + $Extention + "          " + $NewWage + "`n"        
    }
    $Output
#}
#$Employee = New-Object -TypeName psobject
#for($i = 0; $i -lt 500; $i++){
#   $Employee | Add-Member -MemberType NoteProperty -Name FName -Value "SA"
#   $Employee | Add-Member -MemberType NoteProperty -Name Wage -Value 
#}
#$Employee.FName
