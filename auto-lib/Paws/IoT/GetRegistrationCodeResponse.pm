
package Paws::IoT::GetRegistrationCodeResponse;
  use Moose;
  has RegistrationCode => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetRegistrationCodeResponse

=head1 ATTRIBUTES


=head2 RegistrationCode => Str

The CA certificate registration code.




=cut

