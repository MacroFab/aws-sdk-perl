
package Paws::Greengrass::CreateDeploymentResponse;
  use Moose;
  has DeploymentArn => (is => 'ro', isa => 'Str');
  has DeploymentId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateDeploymentResponse

=head1 ATTRIBUTES


=head2 DeploymentArn => Str

Arn of the deployment.


=head2 DeploymentId => Str

Id of the deployment.


=head2 _request_id => Str


=cut

