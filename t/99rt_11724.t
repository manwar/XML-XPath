use Test;
BEGIN { plan tests => 3 }

my $sample = <<EOS;
<xml>
  <tag>FOO</tag>
</xml>
EOS

use XML::XPath;
ok(1);

my $xp = XML::XPath->new(xml=>$sample);
ok($xp);

my $nodelist = $xp->find('/xml/tag');
ok( $nodelist eq 'FOO' );
