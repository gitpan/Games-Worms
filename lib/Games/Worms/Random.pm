# Time-stamp: "1999-03-03 11:25:08 MST" -*-Perl-*-
package Games::Worms::Random;
use strict;
use vars qw($Debug $VERSION @ISA);
use Games::Worms::Base;
@ISA = ('Games::Worms::Base');
$Debug = 0;
$VERSION = "0.60";

sub which_way { # figure out which direction to go in
  my($worm, $hash_r) = @_;
  my @dirs = keys %$hash_r;
  return $dirs[ rand(@dirs) ];
}

sub am_memoized { 0; }

1;

__END__

