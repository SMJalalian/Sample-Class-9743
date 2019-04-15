for ([int] $t = 2; $t -le 500; $t = $t + 1)
 {
    Write-Host(" the T is $t ")
    for ($i = 1; $i -le $t; $i = $i + 1) 
    {
        if ($t % $i -eq 0)
         {
            Write-Host("the I is $i ") 
        }
    }
}