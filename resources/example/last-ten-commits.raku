#!/usr/bin/env raku

use Text::Chart;

my @changed-files = qx<git log --oneline --shortstat -10>
        .lines.grep( /file/ )
        .map( * ~~ /$<files>=(\d+) \s+ file/ )
        .map: +*<files>;

say vertical( :max( @changed-files.max), @changed-files );
