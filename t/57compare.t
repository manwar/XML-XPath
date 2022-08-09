use strict; # -*- perl -*-
use warnings;
use Test::More tests => 7;
use XML::XPath;

my $xp = XML::XPath->new(ioref => *DATA);
ok($xp);

my $resultset = $xp->find('compare("aaa", "bbb")');
ok($resultset->isa('XML::XPath::Number'));
is($resultset->to_literal(), '-1');

$resultset = $xp->find('compare("aaa", "aaa")');
ok($resultset->isa('XML::XPath::Number'));
is($resultset->to_literal(), '0');

$resultset = $xp->find('compare("bbb", "aaa")');
ok($resultset->isa('XML::XPath::Number'));
is($resultset->to_literal(), '1');

__DATA__
<foo/>
