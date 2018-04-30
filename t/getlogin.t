use v6.c;
use Test;
use P5getlogin;

plan 3;

my $username = getlogin;
ok $username ~~ m/^ \w+ /, 'did we get a name';

my $userid = getuid;
ok $userid > 0, 'did we get a user ID';

is getpwuid($userid,:scalar), $username, 'does getlogin/getpwuid give the same';

# vim: ft=perl6 expandtab sw=4
