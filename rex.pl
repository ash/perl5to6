my $str = q:to/EOS/; 
   Keep it secret
   and keep it safe
   EOS
 
say so $str ~~ /safe   $/;   # True  -- 'safe' is at the end of the string 
