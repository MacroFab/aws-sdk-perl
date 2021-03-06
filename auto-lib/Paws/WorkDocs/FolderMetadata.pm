package Paws::WorkDocs::FolderMetadata;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has CreatorId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LatestVersionSize => (is => 'ro', isa => 'Int');
  has ModifiedTimestamp => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ParentFolderId => (is => 'ro', isa => 'Str');
  has ResourceState => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::FolderMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::FolderMetadata object:

  $service_obj->Method(Att1 => { CreatedTimestamp => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::FolderMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTimestamp

=head1 DESCRIPTION

Describes a folder.

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

  The time when the folder was created.


=head2 CreatorId => Str

  The ID of the creator.


=head2 Id => Str

  The ID of the folder.


=head2 Labels => ArrayRef[Str|Undef]

  List of labels on the folder.


=head2 LatestVersionSize => Int

  


=head2 ModifiedTimestamp => Str

  The time when the folder was updated.


=head2 Name => Str

  The name of the folder.


=head2 ParentFolderId => Str

  The ID of the parent folder.


=head2 ResourceState => Str

  The resource state of the folder.


=head2 Signature => Str

  The unique identifier created from the subfolders and documents of the
folder.


=head2 Size => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

