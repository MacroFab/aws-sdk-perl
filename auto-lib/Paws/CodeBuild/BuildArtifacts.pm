package Paws::CodeBuild::BuildArtifacts;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', xmlname => 'location', request_name => 'location', traits => ['Unwrapped','NameInRequest']);
  has Md5sum => (is => 'ro', isa => 'Str', xmlname => 'md5sum', request_name => 'md5sum', traits => ['Unwrapped','NameInRequest']);
  has Sha256sum => (is => 'ro', isa => 'Str', xmlname => 'sha256sum', request_name => 'sha256sum', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BuildArtifacts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::BuildArtifacts object:

  $service_obj->Method(Att1 => { Location => $value, ..., Sha256sum => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::BuildArtifacts object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

Information about build output artifacts.

=head1 ATTRIBUTES


=head2 Location => Str

  Information about the build artifacts' location.


=head2 Md5sum => Str

  The MD5 hash of the build artifact.

You can use this hash along with a checksum tool to confirm both file
integrity and authenticity.

This value is available only if the related build project's
C<packaging> value is set to C<ZIP>.


=head2 Sha256sum => Str

  The SHA-256 hash of the build artifact.

You can use this hash along with a checksum tool to confirm both file
integrity and authenticity.

This value is available only if the related build project's
C<packaging> value is set to C<ZIP>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

