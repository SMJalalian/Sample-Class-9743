
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
                   
                   
                   
                   
                   
                   