
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
                    
                    
                    