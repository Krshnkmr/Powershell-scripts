#The below code remove the temp folder files
$tempfolders=@("C:\Windows\temp\*","C:\Users\hp\AppData\Local\Temp\*")
Remove-Item $tempfolders -Force -Recurse
