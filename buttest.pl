#!/usr/bin/env perl
use strict;
use warnings;

use Butts;

my $butt = $ARGV[0]         // "butt";
my $replace_freq = $ARGV[1] // 0.5;
my $debug = $ARGV[2]        // 0;

my $buttifier = Butts->new(meme         => $butt,
                           debug        => $debug,
                           replace_freq => $replace_freq);

print STDERR "$butt repeat rate is " . $buttifier->replace_freq . $/
  if $debug;

while(<STDIN>) {

    # The old way

    # chomp
    # print join(" ", $buttifier->buttify(split(/\s+/, $_)))."\n";

    # The new way

    print $buttifier->buttify_string, $/;
}
