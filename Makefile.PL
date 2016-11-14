use 5.008005;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME          => 'App::foo',
  VERSION_FROM  => 'lib/App/foo.pm',
  ABSTRACT_FROM => 'lib/App/foo.pm',
  AUTHOR        => 'David Farrell',
  LICENSE       => 'freebsd',
  EXE_FILES     => ['script/foo'],
  PREREQ_PM     => {
    'autodie'       => 0,
    'Time::Piece'   => 0,
    'Getopt::Long'  => 0,
    'Pod::Usage'    => '1.60',
  },
  (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
      'meta-spec' => { version => 2 },
      resources => {
          repository => {
              type => 'git',
              url  => 'https://github.com/dnmfarrell/foo.git',
              web  => 'https://github.com/dnmfarrell/foo',
          },
      }})
   : ()
  ),
);
