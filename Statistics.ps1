$a=809
$b=565
$growth_factor=$a/$b
for($x =1 ;$x -lt 31; $x++)
{
$c=[System.Math]::Pow($growth_factor,$x)
#Write-Host "The value of c is $c"
$cornavirus=$a*$c
[System.Math]::Round($cornavirus)
#Write-Host "The day is $x" ",The number of people affected corona are" [System.Math]::Round($cornavirus)
}