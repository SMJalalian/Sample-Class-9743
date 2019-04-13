
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
                    
                    