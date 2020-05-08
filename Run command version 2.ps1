Write-Host "The path that are currently availables"
Write-Host "1.Downloads"
Write-Host "2.F:\Books\Powershell Books"
Write-Host "3.F:\Books\"
Write-Host "4.D:\Movies\"
Write-Host "5.F:\softwares\"
Write-Host "6.Open this book powershell-4n00bs.pdf"
Function Common-run-commands
{
param(
[parameter(Mandatory=$true)]
[int]$pathnumber
)

switch($pathnumber)
{
1{$path ="C:\users\hp\downloads"}
2{$path ="F:\Books\Powershell Books"}
3{$path ="F:\Books\"}
4{$path ="D:\Movies\"}
5{$path ="F:\softwares\"}
6{$path ="F:\Books\Powershell Books\powershell-4n00bs.pdf"}
}

$path
Start-Process $path -WindowStyle Maximized
}

Common-run-commands