
package Paws::ECS::UpdateServiceResponse;
  use Moose;
  has Service => (is => 'ro', isa => 'Paws::ECS::Service', traits => ['Unwrapped'], xmlname => 'service' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateServiceResponse

=head1 ATTRIBUTES


=head2 Service => L<Paws::ECS::Service>

The full description of your service following the update call.




=cut

1;