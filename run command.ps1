Function run-command
{
[CmdletBinding()]
param(
[parameter(Mandatory=$true)]
[string]$path
)
explorer.exe $path
}

run-command