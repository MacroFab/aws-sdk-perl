package Paws::CognitoIdp::UserPoolType;
  use Moose;
  has AdminCreateUserConfig => (is => 'ro', isa => 'Paws::CognitoIdp::AdminCreateUserConfigType');
  has AliasAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AutoVerifiedAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DeviceConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::DeviceConfigurationType');
  has EmailConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::EmailConfigurationType');
  has EmailConfigurationFailure => (is => 'ro', isa => 'Str');
  has EmailVerificationMessage => (is => 'ro', isa => 'Str');
  has EmailVerificationSubject => (is => 'ro', isa => 'Str');
  has EstimatedNumberOfUsers => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has LambdaConfig => (is => 'ro', isa => 'Paws::CognitoIdp::LambdaConfigType');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has MfaConfiguration => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolPolicyType');
  has SchemaAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::SchemaAttributeType]');
  has SmsAuthenticationMessage => (is => 'ro', isa => 'Str');
  has SmsConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::SmsConfigurationType');
  has SmsConfigurationFailure => (is => 'ro', isa => 'Str');
  has SmsVerificationMessage => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserPoolTags => (is => 'ro', isa => 'Paws::CognitoIdp::UserPoolTagsType');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UserPoolType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UserPoolType object:

  $service_obj->Method(Att1 => { AdminCreateUserConfig => $value, ..., UserPoolTags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UserPoolType object:

  $result = $service_obj->Method(...);
  $result->Att1->AdminCreateUserConfig

=head1 DESCRIPTION

A container for information about the user pool type.

=head1 ATTRIBUTES


=head2 AdminCreateUserConfig => L<Paws::CognitoIdp::AdminCreateUserConfigType>

  The configuration for C<AdminCreateUser> requests.


=head2 AliasAttributes => ArrayRef[Str|Undef]

  Specifies the attributes that are aliased in a user pool.


=head2 AutoVerifiedAttributes => ArrayRef[Str|Undef]

  Specifies the attributes that are auto-verified in a user pool.


=head2 CreationDate => Str

  The date the user pool was created.


=head2 DeviceConfiguration => L<Paws::CognitoIdp::DeviceConfigurationType>

  The device configuration.


=head2 EmailConfiguration => L<Paws::CognitoIdp::EmailConfigurationType>

  The email configuration.


=head2 EmailConfigurationFailure => Str

  The reason why the email configuration cannot send the messages to your
users.


=head2 EmailVerificationMessage => Str

  The contents of the email verification message.


=head2 EmailVerificationSubject => Str

  The subject of the email verification message.


=head2 EstimatedNumberOfUsers => Int

  A number estimating the size of the user pool.


=head2 Id => Str

  The ID of the user pool.


=head2 LambdaConfig => L<Paws::CognitoIdp::LambdaConfigType>

  A container for the AWS Lambda triggers associated with a user pool.


=head2 LastModifiedDate => Str

  The date the user pool was last modified.


=head2 MfaConfiguration => Str

  Can be one of the following values:

=over

=item *

C<OFF> - MFA tokens are not required and cannot be specified during
user registration.

=item *

C<ON> - MFA tokens are required for all user registrations. You can
only specify required when you are initially creating a user pool.

=item *

C<OPTIONAL> - Users have the option when registering to create an MFA
token.

=back



=head2 Name => Str

  The name of the user pool.


=head2 Policies => L<Paws::CognitoIdp::UserPoolPolicyType>

  A container for the policies associated with a user pool.


=head2 SchemaAttributes => ArrayRef[L<Paws::CognitoIdp::SchemaAttributeType>]

  A container with the schema attributes of a user pool.


=head2 SmsAuthenticationMessage => Str

  The contents of the SMS authentication message.


=head2 SmsConfiguration => L<Paws::CognitoIdp::SmsConfigurationType>

  The SMS configuration.


=head2 SmsConfigurationFailure => Str

  The reason why the SMS configuration cannot send the messages to your
users.


=head2 SmsVerificationMessage => Str

  The contents of the SMS verification message.


=head2 Status => Str

  The status of a user pool.


=head2 UserPoolTags => L<Paws::CognitoIdp::UserPoolTagsType>

  The cost allocation tags for the user pool. For more information, see
Adding Cost Allocation Tags to Your User Pool



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

