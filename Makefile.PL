# This -*- perl -*- script writes the Makefile for Worms
# Time-stamp: "1999-03-03 12:06:19 MST"
require 5.004;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
   NAME          => 'Games-Worms',
   VERSION_FROM  => 'lib/Games/Worms.pm',
   'dist'        => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);

package MY;

sub libscan
{ # Determine things that should *not* be installed
    my($self, $path) = @_;
    return '' if $path =~ m/~/;
    $path;
}

__END__
