Clear-Host
[int] $a = read-Host "Please Enter The 1st Number"
[int] $b = read-Host "Please Enter The 2nd Number"
[int] $c = read-Host "Please Enter The 3th Number"
[double] $AVE = ($a + $b + $c) / 3
write-host "The Avarage is $AVE"