Clear-Host
$a = read-host "Please Enter a Positive Number Graeter Than Zero"
if ($a % 2 -eq 0) {
    write-host "The Number is Even"
}else {
    write-host "The Number is odd"
}