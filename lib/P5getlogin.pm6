use v6.c;
unit module P5getlogin:ver<0.0.1>:auth<cpan:ELIZABETH>;

use NativeCall;

sub getlogin(--> Str) is native is export {*}

=begin pod

=head1 NAME

P5getlogin - Implement Perl 5's getlogin() and associated built-ins

=head1 SYNOPSIS

    use P5getlogin;

    say "logged in as {getlogin}";

=head1 DESCRIPTION

This module tries to mimic the behaviour of the C<getlogin> and associated
functions of Perl 5 as closely as possible.  It exports:

    getlogin

=head1 AUTHOR

Elizabeth Mattijsen <liz@wenzperl.nl>

Source can be located at: https://github.com/lizmat/P5getlogin . Comments and
Pull Requests are welcome.

=head1 COPYRIGHT AND LICENSE

Copyright 2018 Elizabeth Mattijsen

Re-imagined from Perl 5 as part of the CPAN Butterfly Plan.

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
