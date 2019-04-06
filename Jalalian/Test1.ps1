$List = Get-Service
foreach ($item in $List) {
    $item.Name     
}