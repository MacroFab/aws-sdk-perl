package Paws::Greengrass::ListDefinitionsResponse;
  use Moose;
  has Definitions => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::DefinitionInformation]');
  has NextToken => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListDefinitionsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::ListDefinitionsResponse object:

  $service_obj->Method(Att1 => { Definitions => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::ListDefinitionsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Definitions

=head1 DESCRIPTION

List of definition response

=head1 ATTRIBUTES


=head2 Definitions => ArrayRef[L<Paws::Greengrass::DefinitionInformation>]

  Definitions


=head2 NextToken => Str

  The token for the next set of results, or ''null'' if there are no
additional results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

