<#
  .SYNOPSIS
    freq use functions library


  .NOTES

    Author: Atsushi Furukawa
    License: https://opensource.org/licenses/MIT


THIS CODE IS MADE AVAILABLE AS IS, WITHOUT WARRANTY OF ANY KIND. THE ENTIRE RISK OF THE USE OR THE RESULTS FROM THE USE OF THIS CODE REMAINS WITH THE USER.

#>

<#
  for user role. subset from WindowsBuiltinRole

#>
enum myUserRole {
  Administrator = [Security.Principal.WindowsBuiltInRole]::Administrator
  PowerUser     = [Security.Principal.WindowsBuiltInRole]::PowerUser
  User          = [Security.Principal.WindowsBuiltInRole]::User
  Guest         = [Security.Principal.WindowsBuiltInRole]::Guest
}

$t = [myUserRole]::poweruser
$t
