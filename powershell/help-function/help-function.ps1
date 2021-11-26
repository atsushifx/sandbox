##
# help test
#
# @author atsushifx <atsushifx@aglabo.com>
# @version 0.0.1
# @date 2021-11-26

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
	[switch]$help
)

# get script full path
# get current directory
$Script = $MyInvocation.MyCommand.path
$ScriptDir = split-path -parent $Script


## function block

## main
if  ($help) { get-help $Script; exit; }

