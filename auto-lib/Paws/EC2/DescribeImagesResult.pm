
package Paws::EC2::DescribeImagesResult;
  use Moose;
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Image]', xmlname => 'imagesSet', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImagesResult

=head1 ATTRIBUTES


=head2 Images => ArrayRef[L<Paws::EC2::Image>]

Information about one or more images.




=cut

