use strict; # -*- perl -*- 
use warnings;
use Test::More tests => 9;
use XML::XPath;

my $xp = XML::XPath->new(ioref => *DATA);
ok($xp);

my $resultset = $xp->find('ends-with("123",""');
ok($resultset->isa('XML::XPath::Boolean'));
is($resultset->to_literal(), 'true');

$resultset = $xp->find('ends-with("","123"');
ok($resultset->isa('XML::XPath::Boolean'));
is($resultset->to_literal(), 'false');

$resultset = $xp->find('ends-with("123","23"');
ok($resultset->isa('XML::XPath::Boolean'));
is($resultset->to_literal(), 'true');

$resultset = $xp->find('ends-with("123","24"');
ok($resultset->isa('XML::XPath::Boolean'));
is($resultset->to_literal(), 'false');

__DATA__
<foo/>
