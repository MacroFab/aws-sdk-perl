
package Paws::DeviceFarm::UpdateProjectResult;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::DeviceFarm::Project', traits => ['Unwrapped'], xmlname => 'project' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateProjectResult

=head1 ATTRIBUTES


=head2 Project => L<Paws::DeviceFarm::Project>






=cut

1;