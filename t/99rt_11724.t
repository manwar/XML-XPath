use Test;
BEGIN { plan tests => 11 }

my $sample = <<EOS;
<xml>
  <tag>FOO</tag>
</xml>
EOS

use XML::XPath;
ok(1);

my $xp = XML::XPath->new(xml=>$sample);
ok($xp);

ok ( $xp->exists('/xml/tag') );

my $nodelist = $xp->find('/xml/tag');
ok( $nodelist->isa('XML::XPath::NodeSet') );
ok( $nodelist->size == 1 );
ok( $nodelist eq 'FOO' );
ok( $nodelist ne 'BAR' );
ok( $nodelist gt 'BA' );
ok( $nodelist ge 'BAR' );
ok( $nodelist lt 'BARBAZ' );
ok( $nodelist le 'BAR' );
