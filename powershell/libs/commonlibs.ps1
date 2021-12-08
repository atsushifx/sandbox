<#
  .SYNOPSIS
    freq use functions library


  .NOTES

    Author: Atsushi Furukawa
    License: https://opensource.org/licenses/MIT


THIS CODE IS MADE AVAILABLE AS IS, WITHOUT WARRANTY OF ANY KIND. THE ENTIRE RISK OF THE USE OR THE RESULTS FROM THE USE OF THIS CODE REMAINS WITH THE USER.

#>
set-StrictMode -Version Latest


class myUserRole {
  static hidden [myUserRole] $_instance = [myUserRole]::new()
  static [myUserRole] $role = [myUserRole]::getInstance()

  # constructor
  hidden myUserRole()
  {
  }

  # instance
  static hidden [myUserRole] getInstance()
  {
    return [myUserRole]::_instance
  }
}

[myUserRole]::role
