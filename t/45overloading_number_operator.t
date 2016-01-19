use Test;
BEGIN { plan tests => 11 }

my $sample = <<EOS;
<xml>
  <value>10</value>
</xml>
EOS

use XML::XPath;
ok(1);

my $xp = XML::XPath->new(xml=>$sample);
ok($xp);

ok ( $xp->exists('/xml/value') );

my $nodelist = $xp->find('/xml/value');
ok( $nodelist->isa('XML::XPath::NodeSet') );
ok( $nodelist->size == 1 );
ok( $nodelist == 10 );
ok( $nodelist != 20 );
ok( $nodelist <= 10 );
ok( $nodelist < 20 );
ok( $nodelist >= 10 );
ok( $nodelist > 1 );
