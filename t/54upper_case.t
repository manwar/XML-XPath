use strict; # -*- perl -*-
use warnings;
use utf8;
use Test::More tests => 5;
use XML::XPath;

my $xp = XML::XPath->new(ioref => *DATA);
ok($xp);

my $resultset = $xp->find('upper-case("föo")');
ok($resultset->isa('XML::XPath::Literal'));
is($resultset->to_literal(), 'FÖO');

$resultset = $xp->find('upper-case("FÖO1")');
ok($resultset->isa('XML::XPath::Literal'));
is($resultset->to_literal(), 'FÖO1');

__DATA__
<foo/>
