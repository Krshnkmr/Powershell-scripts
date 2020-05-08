Function Moveitem
{
[cmdletBinding()]
param(
#enter the source path
[parameter(Mandatory=$true)]
[string]$Sourcepath,
#enter the destination path
[parameter(Mandatory=$true)]
[string]$destinationpath
)

Move-Item -path $Sourcepath -Destination $destinationpath
}

Moveitem