
package Paws::CognitoIdp::StartUserImportJobResponse;
  use Moose;
  has UserImportJob => (is => 'ro', isa => 'Paws::CognitoIdp::UserImportJobType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::StartUserImportJobResponse

=head1 ATTRIBUTES


=head2 UserImportJob => L<Paws::CognitoIdp::UserImportJobType>

The job object that represents the user import job.




=cut

1;