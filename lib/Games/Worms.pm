#!/usr/bin/perl
package Games::Worms;
# Time-stamp: "1999-03-03 11:17:49 MST" -*-Perl-*-

require 5;
use strict;
require Exporter;
use vars qw(%Options $VERSION $Debug @ISA @EXPORT @EXPORT_OK);
use Getopt::Std;
use Games::Worms::Board; # for _try_use

$VERSION = "0.60";
$Debug = 0;
@ISA = qw(Exporter);
@EXPORT = qw(worms);
@EXPORT_OK = qw(worms);
#--------------------------------------------------------------------------

%Options = ();

sub worms {
  getopts('t:vh', \%Options);
  if($Options{'v'}) {
    print "Worms v$VERSION by Sean M. Burke, sburke\@netadventure.net\n";
    exit;
  }
  if($Options{'h'}) {
    print <<"EOHELP"; exit;
Worms v$VERSION by Sean M. Burke, sburke\@netadventure.net
Usage stuff here
EOHELP

  }

  die "What interface?" unless $Options{'t'} =~ /\w/;
  my $interface = "Games::Worms:\:$Options{'t'}" ;
  die "Can't use interface $interface: $Games::Worms::Board::Use_Error\n"
    unless &Games::Worms::Board::_try_use($interface);

  # add further %Options logic here.

  # Now do it.
  die "Can't start up interface $interface!\n" unless $interface->can('main');
  return $interface->main;
}
#--------------------------------------------------------------------------
1;

__END__
