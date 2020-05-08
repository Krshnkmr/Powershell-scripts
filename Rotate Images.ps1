Function Image-Rotate
{
[cmdletBinding()]

param([parameter(Mandatory=$true)]
[string]$path)

[System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
Get-ChildItem -recurse $path -include @("*.png","*.jpg","*.jpegs") |
ForEach-Object {
  $image = [System.Drawing.image]::FromFile( $_ )
  $image.rotateflip("Rotate270FlipNone")
  $image.save($_)
  Write-Host "The file name is $image.save($_)"

}
}

Image-Rotate
