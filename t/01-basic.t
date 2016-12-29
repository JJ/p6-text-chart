use v6;
use Test;
use lib ('../lib','lib');

use Text::Chart;

isa-ok &vertical, Sub, "Got the function";
is vertical(  max => 1, 1), "▮\n", "Single datum OK";
is vertical(  max => 1, chart-char => 'π', 1), "π\n", "Single datum OK";
is vertical(  max => 1, 1, 1,1,1), "▮▮▮▮\n", "Single row OK";
is vertical(  max => 1, 1, 0,1,0), "▮ ▮ \n", "Single row again OK";
is vertical(  max => 2, 1, 2,1,2), " ▮ ▮\n▮▮▮▮\n", "Two rows OK";

done-testing;
