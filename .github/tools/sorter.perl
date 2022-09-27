#!/usr/bin/env perl

local $/;
my $text = <>;
my ($start, @chapters) = split/^#(?=[^#])/m, $text;
print $start;
for (sort @chapters) {
    my ($level1, @subchapters) = split/^##(?=[^#])/m;
    print "#$level1";
        for (sort @subchapters) {
        my ($level2, @subsubchapters) = split/^###(?=[^#])/m;
        print "##$level2";
        print map {"###$_"} sort @subsubchapters; 
        }
}
