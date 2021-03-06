
package Paws::Lightsail::GetBundles;
  use Moose;
  has IncludeInactive => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeInactive' );
  has PageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pageToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBundles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetBundlesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBundles - Arguments for method GetBundles on Paws::Lightsail

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBundles on the 
Amazon Lightsail service. Use the attributes of this class
as arguments to method GetBundles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBundles.

As an example:

  $service_obj->GetBundles(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 IncludeInactive => Bool

A Boolean value that indicates whether to include inactive bundle
results in your request.



=head2 PageToken => Str

A token used for advancing to the next page of results from your get
bundles request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBundles in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

