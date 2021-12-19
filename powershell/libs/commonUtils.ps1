

# base class
class aglabo
{
	static [string] $version = "1.0.0"
}

<#
  .SYNOPSIS
    環境変数を設定する。(セッションおよびglobal)
 #>
 function global:setGlobalEnv()
 {
   param (
      [Parameter(Position=0, Mandatory)]
      [ValidateSet('User', 'Machine')]
      [string]
        $envType = 'User'
   )
 }
