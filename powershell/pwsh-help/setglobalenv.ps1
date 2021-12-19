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
<#
  .SYNOPSIS
    set Value to Environment Variable (global and this session)
 #>
function  Set-GlobalEnvironment()
{
   param (
      [Parameter(Position=2, Mandatory)]
      [ValidateSet('User', 'Machine')]
      [string]
        $Environ = 'User'
   )
}

Get-Help Set-GlobalEnvironment
