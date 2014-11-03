use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Crypt::NamedKeys',
    AUTHOR           => q{Binary.com <perl@binary.com>},
    VERSION_FROM     => 'lib/Crypt/NamedKeys.pm',
    ABSTRACT_FROM    => 'lib/Crypt/NamedKeys.pm',
    LICENSE          => 'BSD',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::Most' => 0,
        'Test::Differences' => 0,
    },
    PREREQ_PM => {
        'Moo' => 0,
        'Carp' => 0,
        'Crypt::CBC' => 0,
        'Crypt::Rijndael' => 0,
        'Digest::SHA' => 0,
        JSON => 0,
        'MIME::Base64' => 0,
        'String::Compare::ConstantTime' => 0,
        'Try::Tiny' => 0,
        'YAML::XS' => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Crypt-NamedKeys-*' },
        META_MERGE => {
            'meta-spec' => { version => 2 },
            resources => {
                repository => {
                    type => 'git',
                    url  => 'https://github.com/binary-com/perl-Crypt-NamedKeys.git',
                    web  => 'https://github.com/binary-com/perl-Crypt-NamedKeys',
                                                                                                                              },
                                                                                                                                       },
                                                                                                                                           },

);
