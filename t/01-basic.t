use v6.c;
use Test;
use P5getlogin;

plan 3;

ok defined(::<&getlogin>),          'is &getlogin imported?';
nok P5getlogin::<&getlogin>:exists, 'is &getlogin externally NOT accessible?';

ok getlogin() ~~ m/^ \w+ /, 'did we get a name';

# vim: ft=perl6 expandtab sw=4
