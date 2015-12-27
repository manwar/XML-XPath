#!/usr/bin/perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME	       => 'XML::XPath',
    AUTHOR             => 'Matt Sergeant, AxKit.com Ltd',
    VERSION_FROM       => 'lib/XML/XPath.pm',
    MIN_PERL_VERSION   => 5.006,
    LICENSE            => 'artistic_2',
    EXE_FILES          => [ 'examples/xpath' ],
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES     => {
        'Test::More'   => 0,
    },
    PREREQ_PM => {
	'XML::Parser'  => '2.23',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'XML-XPath-*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/manwar/XML-XPath.git',
                web  => 'https://github.com/manwar/XML-XPath',
            },
        }})
     : ()
    ),
);
