#!/usr/bin/env raku

use Text::Chart;

my @data = < 1 2 3 4 5 6 7 6 5 4 3 2 1 >;
my $midway = (@data.elems/2).truncate;
my $max = max(@data);
my &left-pad =  { " " x $midway ~ $_ ~ "\n"};

say  left-pad("✶") ~ vertical( :$max, @data ) ~ left-pad("█") x 2;

