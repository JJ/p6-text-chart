#!/usr/bin/env perl6


sub MAIN ( Int :$max = 10, Str :$chart-char = "▮", *@data ) {

    my $data-max = (@data.map: {.abs}).max;
    my @mapped-data = map  { $max*abs( $_ )/$data-max }, @data;
    my $space = " " x chars( $chart-char );
    my $chart;
    loop ( my $i = $max; $i > 0; $i-- ) {
	loop ( my $j = 0; $j < @mapped-data.elems; $j++) {
	    $chart ~= @mapped-data[$j] > $i ?? $chart-char !! $space; 
	}
	$chart ~= "\n";
    }
    say $chart;
}

