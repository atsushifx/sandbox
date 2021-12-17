

# base class
class aglabo {

}

## Nested class
<#
 # static function class for check user role
 #
 # check current user is elevated as 'Administrator'
 #
 #
 #>
class myUserRole : aglabo
{
  hidden static [Security.Principal.WindowsPrincipal]  $principal = [myUserRole]::getCurrentPrincipal()

  # get current windows principal
  hidden static [Security.Principal.WindowsPrincipal] getCurrentPrincipal()
  {
    $id = [Security.Principal.WindowsIdentity]::GetCurrent()
    $pr = [Security.Principal.WindowsPrincipal] $id
    return $pr
  }

  #
  static [bool]  hasRole([Security.Principal.WindowsBuiltInRole] $role)
  {
    <#
      .SYNOPSIS
        check current user has role parameter

      .PARAMETER
        $role
        user role (Administrator, User, ...)
    #>
    return [myUserRole]::principal.IsInRole([Security.Principal.WindowsBuiltinRole] $role)
  }

  #
  static [bool]  isAdmin()
  {
    <#
      check user as 'Administrator'
    #>
    return [myUserRole]::hasRole([Security.Principal.WindowsBuiltinRole]::Administrator)
  }
}

echo [myUserRole]::isAdmin

