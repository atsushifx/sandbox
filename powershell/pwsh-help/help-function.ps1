##
<#
  .SYNOPSIS
    help comment sample for function

  .DESCRIPTION
    display function help comment: funtion help

  .NOTES
    Author: Atsushi Furukawa <atsushifx@aglabo.com>
    License: MIT License  https://opensource.org/licenses/MIT
#>
Param(
)

# get script full path
# get current directory
$Script = $MyInvocation.MyCommand.path

## function block

function  help-sample()
{
  

}

Get-Help Help-sample
