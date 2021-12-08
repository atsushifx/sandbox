


class myUserRole
{


  # Singleton
  static hidden [myUserRole] $_role = [myUserRole]::new()
  static [myUserRole] $role = [myUserRole]::getInstance()

  # member
  static hidden [myUserPrincipal] $_pr = [myUserPrincipal]::new()


  hidden myUserRole()
  {
  }

  static [myUserRole]  getInstance()
  {
    return [myUserRole]::_role
  }

  static [Bool] isAdmin()
  {
    return ([myUserRole]::_pr.hasRole([Security.Principal.WindowsBuiltInRole]::Administrator))
  }


}

## Nested class
class myUserPrincipal {
  [Security.Principal.WindowsPrincipal]  $principal

  # constructor
  myUserPrincipal()
  {
    $this.principal = $this.currentPrincipal()
  }

  # get current windows principal
  [Security.Principal.WindowsPrincipal] currentPrincipal()
  {
    $id = [Security.Principal.WindowsIdentity]::GetCurrent()
    $pr = [Security.Principal.WindowsPrincipal] $id
    return $pr
  }

  #
  [bool]hasRole([Security.Principal.WindowsBuiltInRole] $role)
  {
    return $this.principal.IsInRole($role)
  }
}
