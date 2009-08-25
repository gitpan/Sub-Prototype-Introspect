package Sub::Prototype::Introspect;

use 5.008008;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Sub::Prototype::Introspect ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	proto_getsig
);

our $VERSION = '0.00_01';
our $XS_VERSION = $VERSION;
$VERSION = eval $VERSION;  # see L<perlmodstyle>

require XSLoader;
XSLoader::load('Sub::Prototype::Introspect', $XS_VERSION);

# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Sub::Prototype::Introspect - Perl extension for reading a perlsub prototype signature

=head1 SYNOPSIS

	use Sub::Prototype::Introspect;
	sub proto1($$) { undef; }

	my $protodecl = proto_getsig(\&proto1);
	#protodecl contains now the string '$$'

=head1 DESCRIPTION

proto_getsig() will read the signature of a prototype subroutine.
proto_getsig() must be fed with a coderef to a proto sub and will
return a scalar containing the arguments specification.



=head2 EXPORT

proto_getsig() by default.


=head1 SEE ALSO

Sub::Prototype for setting up a prototype signature at runtime

=head1 AUTHOR

adrian ilarion ciobanu, E<lt>cia@mud.roE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009 by adrian ilarion ciobanu

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.


=cut
