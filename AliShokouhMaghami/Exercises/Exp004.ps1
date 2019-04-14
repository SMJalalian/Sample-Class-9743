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
                    
                    
                    
                    
                    