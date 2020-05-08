Function CreateNewFolder
{
[cmdletBinding()]
param(
#enter the path to create the new folder
[parameter(Mandatory=$true)]
[string]$path,
#enter the new folder name
[parameter(Mandatory=$true)]
[string]$folder_name
)
New-Item -Path $path -Name $folder_name -ItemType Directory
}

CreateNewFolder