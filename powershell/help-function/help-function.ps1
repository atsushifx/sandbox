##
# help test
#
# @author atsushifx <atsushifx@aglabo.com>
# @version 0.0.1
# @date 2021-11-26
#

<#
  .SYNOPSIS
    test -help option script

  .DESCRIPTION
    only check [-help] option, and display this help.

  .EXAMPLE
   PS> .help-test -help
    display this help

#>
Param(
  [switch]$h,
  [switch]$help
)

# get script full path
# get current directory
$Script = $MyInvocation.MyCommand.path
$ScriptDir = split-path -parent $Script


## function block

function  help()
{
  Param (
    [switch]$shortHelp
  )
  if ( !$shortHelp ) {
    get-help $Script
  } else {
    get-help $script | select-string 'SYN' -context 0,1 | % { $_.context }
  }
}


## main
# check help
if ($h -or ('-?' -in $args)) { help -shortHelp; exit ; }
if ($help){ help; exit; }

echo "Args:" $args

