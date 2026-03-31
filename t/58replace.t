use strict; # -*- perl -*-
use warnings;
use Test::More tests => 5;
use XML::XPath;

my $xp = XML::XPath->new(ioref => *DATA);
ok($xp);

my $resultset = $xp->find('replace("fooboo", "oo", "ar")');
ok($resultset->isa('XML::XPath::Literal'));
is($resultset->to_literal(), 'farbar');

$resultset = $xp->find('replace("fooboo", "OO", "ar", "i")');
ok($resultset->isa('XML::XPath::Literal'));
is($resultset->to_literal(), 'farbar');


__DATA__
<foo/>
    
