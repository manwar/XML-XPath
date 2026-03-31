use strict; # -*- perl -*-
use warnings;
use utf8;
use Test::More tests => 5;
use XML::XPath;

my $xp = XML::XPath->new(ioref => *DATA);
ok($xp);

my $resultset = $xp->find('lower-case("föo")');
ok($resultset->isa('XML::XPath::Literal'));
is($resultset->to_literal(), 'föo');

$resultset = $xp->find('lower-case("FÖO1")');
ok($resultset->isa('XML::XPath::Literal'));
is($resultset->to_literal(), 'föo1');

__DATA__
<foo/>
