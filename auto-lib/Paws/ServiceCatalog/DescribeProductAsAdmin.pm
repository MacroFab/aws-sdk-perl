
package Paws::ServiceCatalog::DescribeProductAsAdmin;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProductAsAdmin');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::DescribeProductAsAdminOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeProductAsAdmin - Arguments for method DescribeProductAsAdmin on Paws::ServiceCatalog

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProductAsAdmin on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method DescribeProductAsAdmin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProductAsAdmin.

As an example:

  $service_obj->DescribeProductAsAdmin(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code to use for this operation. Supported language codes
are as follows:

"en" (English)

"jp" (Japanese)

"zh" (Chinese)

If no code is specified, "en" is used as the default.



=head2 B<REQUIRED> Id => Str

The identifier of the product for which to retrieve information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProductAsAdmin in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

