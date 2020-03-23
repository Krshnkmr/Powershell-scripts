Function Set-brightness
{
[cmdletBinding()]

param(
#[ValidateRange(1,100)]
[parameter(Mandatory=$true)]
[string]$brightnessvalue
)

$bright =gwmi -Namespace "root\wmi" -Class WmiMonitorBrightnessMethods
$bright.WmiSetBrightness(1,$brightnessvalue)
}
Set-brightness 