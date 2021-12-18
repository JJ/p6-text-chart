use v6;
use Test;
use lib ('../lib','lib');

use Text::Chart;

isa-ok &vertical, Sub, "Got the function";
is vertical(  max => 1, 1), "$default-char\n", "Single datum OK";
is vertical(  max => 1, chart-char => 'π', 1), "π\n", "Single datum OK";
is vertical(  max => 1, 1, 1,1,1), $default-char x 4 ~ "\n", "Single row OK";
is vertical(  max => 1, 1, 0,1,0), "$default-char $default-char \n", "Single row again OK";
is vertical(  max => 2, 1, 2,1,2),
        " $default-char $default-char\n" ~ $default-char x 4 ~ "\n",
        "Two rows OK";

done-testing;
