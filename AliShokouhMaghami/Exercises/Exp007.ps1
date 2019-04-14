
 
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
                    
                    
                    
                    