
package Paws::RDS::FailoverDBClusterResult;
  use Moose;
  has DBCluster => (is => 'ro', isa => 'Paws::RDS::DBCluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::FailoverDBClusterResult

=head1 ATTRIBUTES


=head2 DBCluster => L<Paws::RDS::DBCluster>






=cut

