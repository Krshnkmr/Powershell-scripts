Function run-command
{
[CmdletBinding()]
param(
[parameter(Mandatory=$true)]
[string]$path
)
Start-Process $path
}

run-command 