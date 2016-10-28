
package Paws::CodeDeploy::ListDeploymentInstancesOutput;
  use Moose;
  has InstancesList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['Unwrapped'], xmlname => 'instancesList' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentInstancesOutput

=head1 ATTRIBUTES


=head2 InstancesList => ArrayRef[Str|Undef]

A list of instance IDs.



=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list deployment instances call
to return the next set of deployment instances in the list.




=cut

1;