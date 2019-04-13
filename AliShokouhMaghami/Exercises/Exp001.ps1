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
                    