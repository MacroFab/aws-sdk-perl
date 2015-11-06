package Paws::SSM;
  use Moose;
  sub service { 'ssm' }
  sub version { '2014-11-06' }
  sub target_prefix { 'AmazonSSM' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';


  our $AUTOLOAD;
  sub AUTOLOAD {
    my $method = $AUTOLOAD;
    my $self = shift;
    my $call_object = $self->new_with_coercions($method, @_);
    return $self->caller->do_call($self, $call_object);
  }


  sub operations { qw/CancelCommand CreateAssociation CreateAssociationBatch CreateDocument DeleteAssociation DeleteDocument DescribeAssociation DescribeDocument DescribeInstanceInformation GetDocument ListAssociations ListCommandInvocations ListCommands ListDocuments SendCommand UpdateAssociationStatus / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM - Perl Interface to AWS Amazon Simple Systems Management Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSM');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Simple Systems Manager (SSM) is a set of capabilities that can help you
manage your Amazon EC2 instances running on Windows. SSM enables you to
run scripts or other common administrative tasks on your instances
using either SSM Run Command or SSM Config.

Run Command extends the server administration capabilities of SSM by
offering an on-demand experience for executing commands. You can use
pre-defined Amazon SSM documents (formerly called configuration
documents) to perform the actions listed later in this section, or you
can create your own documents. With these document, you can then
remotely configure your instances by sending commands using the AWS
command line interface (CLI), AWS Tools for Windows PowerShell, or the
B<Commands> page in the Amazon EC2 console. Additionally, because Run
Command enables you to execute PowerShell commands or scripts, you can
administer your instances remotely using PowerShell as though you were
logged on locally to the instance. Run Command reports the status of
the command execution for each instance targeted by a command. You can
also audit the command execution to understand who executed commands,
when, and what changes were made. By switching between different SSM
documents, you can quickly configure your instances with different
types of commands.

SSM Config is a lightweight instance configuration solution. With SSM
Config, you can specify a setup configuration for your instances. SSM
Config is similar to EC2 User Data, which is another way of running
one-time scripts or applying settings during instance launch. SSM
Config is an extension of this capability. Using SSM documents, you can
specify which actions the system should perform on your instances,
including which applications to install, which AWS Directory Service
directory to join, which Microsoft PowerShell modules to install, etc.
If an instance is missing one or more of these configurations, the
system makes those changes. By default, the system checks every five
minutes to see if there is a new configuration to apply as defined in a
new SSM document. If so, the system updates the instances accordingly.
In this way, you can remotely maintain a consistent configuration
baseline on your instances. SSM Config is available using the AWS CLI
or the AWS Tools for Windows PowerShell.

SSM is currently not supported on Linux instances.

You can use Run Command and SSM Config to do the following:

=over

=item *

Join an AWS Directory Service directory (SSM Config and Run Command)

=item *

Install, repair, or uninstall software using an MSI package (SSM Config
and Run Command)

=item *

Install PowerShell modules (SSM Config and Run Command)

=item *

Configure CloudWatch Logs to monitor applications and systems (SSM
Config and Run Command)

=item *

Run PowerShell commands or scripts (Run Command only)

=item *

Update the EC2Config service (Run Command only)

=item *

Configure Windows Update settings (Run Command only)

=back

SSM documents run with administrative privilege on Windows instances
because the EC2Config service runs in the Local System account. If a
user has permission to execute any of the pre-defined SSM documents
(any document that begins with AWS-*) then that user also has
administrator access to the instance. Delegate access to SSM Config and
Run Command judiciously. This becomes extremely important if you create
your own SSM documents. Amazon Web Services does not provide guidance
about how to create secure SSM documents. You create SSM documents and
delegate access to Run Command actions at your own risk. As a security
best practice, we recommend that you assign access to "AWS-*"
documents, especially the AWS-RunPowerShellScript document, to trusted
administrators only. You can create low-level SSM documents for low
security tasks and delegate access to non-administrators.

=head1 METHODS

=head2 CancelCommand(CommandId => Str, [InstanceIds => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::SSM::CancelCommand>

Returns: a L<Paws::SSM::CancelCommandResult> instance

  Attempts to cancel the command specified by the Command ID. There is no
guarantee that the command will be terminated and the underlying
process stopped.


=head2 CreateAssociation(InstanceId => Str, Name => Str, [Parameters => L<Paws::SSM::Parameters>])

Each argument is described in detail in: L<Paws::SSM::CreateAssociation>

Returns: a L<Paws::SSM::CreateAssociationResult> instance

  Associates the specified SSM document with the specified instance.

When you associate an SSM document with an instance, the configuration
agent on the instance processes the document and configures the
instance as specified.

If you associate a document with an instance that already has an
associated document, the system throws the AssociationAlreadyExists
exception.


=head2 CreateAssociationBatch(Entries => ArrayRef[L<Paws::SSM::CreateAssociationBatchRequestEntry>])

Each argument is described in detail in: L<Paws::SSM::CreateAssociationBatch>

Returns: a L<Paws::SSM::CreateAssociationBatchResult> instance

  Associates the specified SSM document with the specified instances.

When you associate an SSM document with an instance, the configuration
agent on the instance processes the document and configures the
instance as specified.

If you associate a document with an instance that already has an
associated document, the system throws the AssociationAlreadyExists
exception.


=head2 CreateDocument(Content => Str, Name => Str)

Each argument is described in detail in: L<Paws::SSM::CreateDocument>

Returns: a L<Paws::SSM::CreateDocumentResult> instance

  Creates an SSM document.

After you create an SSM document, you can use CreateAssociation to
associate it with one or more running instances.


=head2 DeleteAssociation(InstanceId => Str, Name => Str)

Each argument is described in detail in: L<Paws::SSM::DeleteAssociation>

Returns: a L<Paws::SSM::DeleteAssociationResult> instance

  Disassociates the specified SSM document from the specified instance.

When you disassociate an SSM document from an instance, it does not
change the configuration of the instance. To change the configuration
state of an instance after you disassociate a document, you must create
a new document with the desired configuration and associate it with the
instance.


=head2 DeleteDocument(Name => Str)

Each argument is described in detail in: L<Paws::SSM::DeleteDocument>

Returns: a L<Paws::SSM::DeleteDocumentResult> instance

  Deletes the SSM document and all instance associations to the document.

Before you delete the SSM document, we recommend that you use
DeleteAssociation to disassociate all instances that are associated
with the document.


=head2 DescribeAssociation(InstanceId => Str, Name => Str)

Each argument is described in detail in: L<Paws::SSM::DescribeAssociation>

Returns: a L<Paws::SSM::DescribeAssociationResult> instance

  Describes the associations for the specified SSM document or instance.


=head2 DescribeDocument(Name => Str)

Each argument is described in detail in: L<Paws::SSM::DescribeDocument>

Returns: a L<Paws::SSM::DescribeDocumentResult> instance

  Describes the specified SSM document.


=head2 DescribeInstanceInformation([InstanceInformationFilterList => ArrayRef[L<Paws::SSM::InstanceInformationFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeInstanceInformation>

Returns: a L<Paws::SSM::DescribeInstanceInformationResult> instance

  Describes one or more of your instances. You can use this to get
information about instances like the operating system platform, the SSM
agent version, status etc. If you specify one or more instance IDs, it
returns information for those instances. If you do not specify instance
IDs, it returns information for all your instances. If you specify an
instance ID that is not valid or an instance that you do not own, you
receive an error.


=head2 GetDocument(Name => Str)

Each argument is described in detail in: L<Paws::SSM::GetDocument>

Returns: a L<Paws::SSM::GetDocumentResult> instance

  Gets the contents of the specified SSM document.


=head2 ListAssociations(AssociationFilterList => ArrayRef[L<Paws::SSM::AssociationFilter>], [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListAssociations>

Returns: a L<Paws::SSM::ListAssociationsResult> instance

  Lists the associations for the specified SSM document or instance.


=head2 ListCommandInvocations([CommandId => Str, Details => Bool, Filters => ArrayRef[L<Paws::SSM::CommandFilter>], InstanceId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListCommandInvocations>

Returns: a L<Paws::SSM::ListCommandInvocationsResult> instance

  An invocation is copy of a command sent to a specific instance. A
command can apply to one or more instances. A command invocation
applies to one instance. For example, if a user executes SendCommand
against three instances, then a command invocation is created for each
requested instance ID. ListCommandInvocations provide status about
command execution.


=head2 ListCommands([CommandId => Str, Filters => ArrayRef[L<Paws::SSM::CommandFilter>], InstanceId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListCommands>

Returns: a L<Paws::SSM::ListCommandsResult> instance

  Lists the commands requested by users of the AWS account.


=head2 ListDocuments([DocumentFilterList => ArrayRef[L<Paws::SSM::DocumentFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListDocuments>

Returns: a L<Paws::SSM::ListDocumentsResult> instance

  Describes one or more of your SSM documents.


=head2 SendCommand(DocumentName => Str, InstanceIds => ArrayRef[Str], [Comment => Str, OutputS3BucketName => Str, OutputS3KeyPrefix => Str, Parameters => L<Paws::SSM::Parameters>, TimeoutSeconds => Int])

Each argument is described in detail in: L<Paws::SSM::SendCommand>

Returns: a L<Paws::SSM::SendCommandResult> instance

  Executes commands on one or more remote instances.


=head2 UpdateAssociationStatus(AssociationStatus => L<Paws::SSM::AssociationStatus>, InstanceId => Str, Name => Str)

Each argument is described in detail in: L<Paws::SSM::UpdateAssociationStatus>

Returns: a L<Paws::SSM::UpdateAssociationStatusResult> instance

  Updates the status of the SSM document associated with the specified
instance.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

