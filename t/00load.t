#!perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More tests => 23;

BEGIN {
    use_ok('XML::XPath')                  || print "Bail out!\n";
    use_ok('XML::XPath::Boolean')         || print "Bail out!\n";
    use_ok('XML::XPath::Builder')         || print "Bail out!\n";
    use_ok('XML::XPath::Expr')            || print "Bail out!\n";
    use_ok('XML::XPath::Function')        || print "Bail out!\n";
    use_ok('XML::XPath::Literal')         || print "Bail out!\n";
    use_ok('XML::XPath::LocationPath')    || print "Bail out!\n";
    use_ok('XML::XPath::Node')            || print "Bail out!\n";
    use_ok('XML::XPath::Node::Attribute') || print "Bail out!\n";
    use_ok('XML::XPath::Node::Comment')   || print "Bail out!\n";
    use_ok('XML::XPath::Node::Element')   || print "Bail out!\n";
    use_ok('XML::XPath::Node::Namespace') || print "Bail out!\n";
    use_ok('XML::XPath::Node::PI')        || print "Bail out!\n";
    use_ok('XML::XPath::Node::Text')      || print "Bail out!\n";
    use_ok('XML::XPath::Node')            || print "Bail out!\n";
    use_ok('XML::XPath::NodeSet')         || print "Bail out!\n";
    use_ok('XML::XPath::Number')          || print "Bail out!\n";
    use_ok('XML::XPath::Parser')          || print "Bail out!\n";
    use_ok('XML::XPath::PerlSAX')         || print "Bail out!\n";
    use_ok('XML::XPath::Root')            || print "Bail out!\n";
    use_ok('XML::XPath::Step')            || print "Bail out!\n";
    use_ok('XML::XPath::Variable')        || print "Bail out!\n";
    use_ok('XML::XPath::XMLParser')       || print "Bail out!\n";
}

diag( "Testing XML::XPath $XML::XPath::VERSION, Perl $], $^X" );
