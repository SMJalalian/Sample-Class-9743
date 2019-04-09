clear-host
$t = 0
for ($n = 2; $n -le 6; $n+=2) {
    [int] $i = read-host ("Please Enter a Number")
    [int] $j = read-host ("Please Enter a Number")
    [int] $k = read-host ("Please Enter a Number")
    [int] $t = ($i+$j+$k)
    write-host "Sum of Them is $t"
}