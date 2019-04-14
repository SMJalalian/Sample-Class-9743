
                    ###########################################################
                    # ex:10    Print Odd Numbers Less than Num User Enter     #
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
                    