# Time-stamp: "1999-03-03 11:24:49 MST" -*-Perl-*-
package Games::Worms::Random2;
use strict;
use vars qw($Debug $VERSION @ISA);
use Games::Worms::Random;
@ISA = ('Games::Worms::Random');
$Debug = 0;
$VERSION = "0.60";

# same as Random class, but with memoization

sub am_memoized { 1; }

1;

__END__
