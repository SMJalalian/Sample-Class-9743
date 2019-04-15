clear-host
for( $j=3 ; $j -lt 500 ; $j++ )
{
    write-Host("number of $j is:")
    for( $i=1 ; $i -le $j/2 ; $i++ )
    {
        if ( $j%$i -eq 0 )
        {
            $i
        }    
    }    
}
