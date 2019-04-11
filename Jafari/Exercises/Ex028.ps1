[int] $N = Read-Host "Enter The Count of Your Numbers"
$Max = 0
for($i = 1; $i -le $N; $i++){
    [int] $M = Read-Host "Enter #$i Number"
    if($M -gt $Max){
        $Max = $M
    }
}
Write-Host("Your Max Number Is: $Max")