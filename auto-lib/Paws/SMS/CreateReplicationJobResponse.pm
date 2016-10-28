
package Paws::SMS::CreateReplicationJobResponse;
  use Moose;
  has ReplicationJobId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'replicationJobId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::CreateReplicationJobResponse

=head1 ATTRIBUTES


=head2 ReplicationJobId => Str






=cut

1;