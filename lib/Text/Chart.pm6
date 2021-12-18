use v6;
unit module Text::Chart;

constant $default-char is export = "█";

sub vertical ( Int :$max = 10, Str :$chart-chars = $default-char, *@data ) is
                                                                     export  {

    my $data-max = (@data.map: {.abs}).max;
    my @mapped-data = @data.map:  { $max*abs( $_ )/$data-max };
    my $space = " ";
    my @chars = $chart-chars.comb;
    my $chart;
    for $max...1 -> $i  {
	    for  0..^@mapped-data.elems -> $j {
	        $chart ~= @mapped-data[$j] >= $i ?? @chars[$j % @chars.elems] !!
                    $space;
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
    say vertical( max => 2, 1, 2, 1, 2)

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
