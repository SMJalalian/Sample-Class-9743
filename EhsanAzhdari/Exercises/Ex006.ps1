Clear-Host
$N = Read-Host "Please Enter Your Number"
for($i=1 ; $i -le $N ; $i=$i+2){
        Write-Host($i)
}