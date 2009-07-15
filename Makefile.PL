use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Bio::Mitomaster::RefHuman',
    AUTHOR              => 'Marty Brandon <mbrandon@uci.edu>',
    VERSION_FROM        => 'lib/Bio/Mitomaster/RefHuman.pm',
    ABSTRACT_FROM       => 'lib/Bio/Mitomaster/RefHuman.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'MooseX::Singleton' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Bio-Mitomaster-RefHuman-*' },
);
