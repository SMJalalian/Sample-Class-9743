Clear-Host
$i = 101
while ( $i -le 989 ) {
    $Add = 0
    for ($j = 0; $j -le 4; $j++) {
        Write-Host($i + $Add)
        $Add += 20 
    }
    $i += $Add + 1
}