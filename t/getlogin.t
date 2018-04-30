use v6.c;
use Test;
use P5getlogin;

plan 3;

my $userid = getuid;
ok $userid > 0, 'did we get a user ID';

my $username = getlogin;
if $username {
    ok $username ~~ m/^ \w+ /, 'did we get a name';
    is getpwuid($userid,:scalar), $username,
      'does getlogin/getpwuid give the same';
}
else {
    $username = getpwuid($userid,:scalar);
    pass "getlogin empty";
    ok $username ~~ m/^ \w+ /, 'did we get a name';
}

# vim: ft=perl6 expandtab sw=4
