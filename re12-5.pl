print 'ok' if 'abcde' =~ /abc?de/;
print 'ok' if 'abde'  =~ /abc?de/;
print 'not ok' unless 'abccde' =~ /abc?de/;

