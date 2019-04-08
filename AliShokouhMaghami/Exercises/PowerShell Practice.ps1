                    ###########################################################
                    #                 Multiplication Table                    #
                    ###########################################################


(1..10).foreach({ $i = $PSItem 

    Write-Host("`n")

    (1..10).foreach({Write-Host(($PSItem* $i).Tostring() + "`t" ) -nonewline }) 

    })









                    ###########################################################
                    #                 Multiplication Table                    #
                    ###########################################################

$List = (1..10)

foreach($i in $List){

    foreach($j in $List){

        Write-Host("`t" + $i * $j ) -NoNewline
    }
    Write-Host("`n") 
}












                    ###########################################################
                    #                    Fibonacci Series                     #
                    ###########################################################


$List = (1..10)

$a = 0

$b = 1

foreach($j in $List){
         
        $tmp = $a

        $a = $a + $b

        $b = $tmp

        Write-Host( "`t" + $a )   -NoNewline

}











                    ###########################################################
                    # ex:4       Second to Hour - Minute Convertor            #
                    ###########################################################

$G = Read-Host Enter Seconds

Write-Host $G -NoNewline

Write-Host " Seconds is "

[int]$Hour = $G / 3600

 Write-Host ("Hours:" + $Hour )

 $tmp = $G - 3600 * $Hour

 $Minute = $tmp / 60

 Write-Host ("Minutes:" + $Minute )

 $Second = $tmp - 60 * $Minute

 Write-Host ("Second:" + $Second )








 
                    ###########################################################
                    # ex:5         Print Two Digits Even Numbers              #
                    ###########################################################


for( $i = 10 ; $i -lt 100 ; $i = $i + 2 ){

    Write-Host( "`t" + $i )   -NoNewline

}






 
                    ###########################################################
                    # ex:6     Print Odd Numbers Less than Num User Enter     #
                    ###########################################################




 $n = Read-Host "please enter N value"

for ($i=1; $i -le $n; $i=$i+2)
  {  
    if ($i -le 98)
    {
    Write-Host ( "`t" + $i ) -NoNewline
    }

}








 
                    ###########################################################
                    # ex:7    Print Odd Numbers Less than Num User Enter      #
                    ###########################################################
$s = 0

for($i=1000; $i -le 2000; $i=$i+2 ){
    
    Write-Host ( "`t" + $i ) 

    $s = $s + $i
}
 Write-Host ( "Sum of numbers is:") 

 Write-Host ("`t" + $s ) 






                    ###########################################################
                    # ex:8    Print Odd Numbers Less than Num User Enter      #
                    ###########################################################



 $n = Read-Host "please enter N value"

 $s = 0

 $i = 0

for ( $i ; $i -le $n )
  {  

  $i=$i+1

    if ($i -le $n)
    {
        
        $s = $s + 1 / $i
              
    }
    
    else
    
    { 
            Write-Host "the number is" $s
    }
 
}







                    ###########################################################
                    # ex:9    Print Odd Numbers Less than Num User Enter      #
                    ###########################################################





[float] $n = Read-Host "please enter N value"
[float] $s=0
[float] $i = 2
for ( $i ; $i -le $n )
  {  
  $i=$i+2
    if ($i -le $n)
    {
        
        $s = $s + 1 / $i
            Write-Host "the number is" $s
           
    }
    
    else
    
    { 
            Write-Host "the number is" $s
    }
 
}





                    ###########################################################
                    # ex:10    Print Odd Numbers Less than Num User Enter      #
                    ###########################################################


[float] $n = Read-Host "please enter N value"
[float] $p=0
[float] $i = 0
for ( $i ; $i -le $n )
  {  
  $i=$i+1
    if ($i -le $n)
    {
        
        $p = $p + 1 / $i / $n
            
           
    }
    
    else
    
    { 
            Write-Host "the number is" $p
    }
 
}
