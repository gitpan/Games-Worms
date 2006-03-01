# This -*-perl-*- script writes the Makefile for installing this distribution.
#
# See "perldoc perlmodinstall" or "perldoc ExtUtils::MakeMaker" for
# info on how to control how the installation goes.
#

require 5.004;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
   NAME          => 'Games::Worms',
   VERSION_FROM  => 'lib/Games/Worms.pm',
   'EXE_FILES' => [qw(worms)],
   'dist'        => { COMPRESS => 'gzip -6f', SUFFIX => 'gz', },
);
