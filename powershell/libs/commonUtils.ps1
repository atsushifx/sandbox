

# base class
class aglabo
{
	static [string] $version = "1.0.0"
}

<#
 # static function class for check user role
 #
 # check current user is elevated as 'Administrator'
 #
 #
 #>
class userPrincipal : aglabo
{
	hidden static [Security.Principal.WindowsPrincipal] $principal = $null;

	hidden static userPrincipal()
	{
		if ([userPrincipal]::principal -eq $null) {
			[userPrincipal]::principal = getPrincipal
		}
	}


	# get current windows principal
	hidden static [Security.Principal.WindowsPrincipal] getPrincipal()
	{
		$id = [Security.Principal.WindowsIdentity]::GetCurrent()
		return ([Security.Principal.WindowsPrincipal] $id)
	}

	<#
      .SYNOPSIS
        check current user has role parameter

      .PARAMETER
        $role
        user role (Administrator, User, ...)
	#>
	static [bool] hasRole([Security.Principal.WindowsBuiltInRole] $role)
	{
		return [userPrincipal]::principal.IsInRole($role)
	}

	<#
	  .SYNOPSIS
        check user as 'Administrator'\
    #>
	static [bool]  isAdmin()
	{
		return [userPrincipal]::hasRole([Security.Principal.WindowsBuiltinRole]::Administrator)
	}
}


