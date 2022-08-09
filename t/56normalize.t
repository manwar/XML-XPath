use strict; # -*- perl -*-
use warnings;
use Test::More tests => 5;
use XML::XPath;

my $xp = XML::XPath->new(ioref => *DATA);
ok($xp);

my $resultset =
$xp->find('/foo/nfc/text() = normalize-unicode(/foo/nfd/text(), "NFC")');
ok($resultset->isa('XML::XPath::Boolean'));
is($resultset->to_literal(), 'true');

$xp->find('/foo/nfd/text() = normalize-unicode(/foo/nfc/text(), "NFD")');
ok($resultset->isa('XML::XPath::Boolean'));
is($resultset->to_literal(), 'true');

__DATA__
<?xml version="1.0" encoding="UTF-8"?>
<foo>
<nfc>Ångstrom</nfc>
<nfd>Ångstrom</nfd>
</foo>
