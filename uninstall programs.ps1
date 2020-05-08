Function Uninstall-app
{
[cmdletBinding()]

param(
[parameter(Mandatory=$true)]
[string]$appname
)
$app=Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -eq $appname}
}

Uninstall-app