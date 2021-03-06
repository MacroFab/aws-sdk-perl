
package Paws::Route53::GetHealthCheckLastFailureReason;
  use Moose;
  has HealthCheckId => (is => 'ro', isa => 'Str', uri_name => 'HealthCheckId', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHealthCheckLastFailureReason');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetHealthCheckLastFailureReasonResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHealthCheckLastFailureReason - Arguments for method GetHealthCheckLastFailureReason on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHealthCheckLastFailureReason on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method GetHealthCheckLastFailureReason.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHealthCheckLastFailureReason.

As an example:

  $service_obj->GetHealthCheckLastFailureReason(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheckId => Str

The ID for the health check for which you want the last failure reason.
When you created the health check, C<CreateHealthCheck> returned the ID
in the response, in the C<HealthCheckId> element.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHealthCheckLastFailureReason in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

