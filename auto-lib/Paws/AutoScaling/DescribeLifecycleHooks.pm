
package Paws::AutoScaling::DescribeLifecycleHooks {
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleHookNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHooks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DescribeLifecycleHooksAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLifecycleHooksResult');
}
1;