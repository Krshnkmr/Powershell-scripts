Function CompressZIPFile
{
[cmdletBinding()]
param(
[Parameter(Mandatory=$true)]
[string]$source_path,
[Parameter(Mandatory=$true)]
[string]$destination_path
)

Compress-Archive -Path $source_path -DestinationPath $destination_path -Confirm
}

CompressZIPFile