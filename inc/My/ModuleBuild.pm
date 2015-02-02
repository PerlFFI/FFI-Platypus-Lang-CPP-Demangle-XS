package My::ModuleBuild;

use strict;
use warnings;
use 5.008001;
use base qw( Module::Build );

sub new
{
  my($class, %args) = @_;
  
  $args{c_source}           = 'xs';
  $args{include_dirs}       = 'include';
  $args{extra_linker_flags} = '-lstdc++';
  
  my $self = $class->SUPER::new(%args);
  
  $self;
}

1;
