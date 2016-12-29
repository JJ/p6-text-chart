use v6;
unit class Text::Chart;


sub vertical ( Int :$max = 10, Str :$chart-char = "▮", *@data ) is export  {

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
    return $chart;
}

=begin pod

=head1 NAME

Text::Chart - Produces simple text charts from arrays

=head1 SYNOPSIS

  use Text::Chart;

=head1 DESCRIPTION

Text::Chart is a collection of functions that produce text charts.
Given an array and, optionally, a max value,
produces several types of text charts. 

=head1 AUTHOR

JJ Merelo <jjmerelo@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2016 JJ Merelo

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
