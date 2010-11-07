package Syntax::Keyword::Junction::Base;
BEGIN {
  $Syntax::Keyword::Junction::Base::VERSION = '0.002000';
}

use strict;
use warnings;

use overload(
    '=='   => "num_eq",
    '!='   => "num_ne",
    '>='   => "num_ge",
    '>'    => "num_gt",
    '<='   => "num_le",
    '<'    => "num_lt",
    'eq'   => "str_eq",
    'ne'   => "str_ne",
    'ge'   => "str_ge",
    'gt'   => "str_gt",
    'le'   => "str_le",
    'lt'   => "str_lt",
    'bool' => "bool",
    '""'   => sub {shift},
);

sub new {
    my ( $class, @param ) = @_;
    return bless \@param, $class;
}

sub values {
    my $self = shift;
    return wantarray ? @$self : [ @$self ];
}

1;


__END__
=pod

=head1 NAME

Syntax::Keyword::Junction::Base

=head1 VERSION

version 0.002000

=head1 AUTHORS

=over 4

=item *

Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>

=item *

Carl Franks

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Arthur Axel "fREW" Schmidt.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

