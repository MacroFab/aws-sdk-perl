package Paws::SSM::MaintenanceWindowTask;
  use Moose;
  has LoggingInfo => (is => 'ro', isa => 'Paws::SSM::LoggingInfo');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskParameters');
  has Type => (is => 'ro', isa => 'Str');
  has WindowId => (is => 'ro', isa => 'Str');
  has WindowTaskId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowTask object:

  $service_obj->Method(Att1 => { LoggingInfo => $value, ..., WindowTaskId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowTask object:

  $result = $service_obj->Method(...);
  $result->Att1->LoggingInfo

=head1 DESCRIPTION

Information about a task defined for a Maintenance Window.

=head1 ATTRIBUTES


=head2 LoggingInfo => L<Paws::SSM::LoggingInfo>

  Information about an Amazon S3 bucket to write task-level logs to.


=head2 MaxConcurrency => Str

  The maximum number of targets this task can be run for in parallel.


=head2 MaxErrors => Str

  The maximum number of errors allowed before this task stops being
scheduled.


=head2 Priority => Int

  The priority of the task in the Maintenance Window, the lower the
number the higher the priority. Tasks in a Maintenance Window are
scheduled in priority order with tasks that have the same priority
scheduled in parallel.


=head2 ServiceRoleArn => Str

  The role that should be assumed when executing the task


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

  The targets (either instances or tags). Instances are specified using
Key=instanceids,Values=E<lt>instanceid1E<gt>,E<lt>instanceid2E<gt>.
Tags are specified using Key=E<lt>tag nameE<gt>,Values=E<lt>tag
valueE<gt>.


=head2 TaskArn => Str

  The ARN of the task to execute.


=head2 TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>

  The parameters that should be passed to the task when it is executed.


=head2 Type => Str

  The type of task.


=head2 WindowId => Str

  The Maintenance Window ID where the task is registered.


=head2 WindowTaskId => Str

  The task ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

