function Restart-powershell
{
Start-Process "C:\Windows\System32\WindowsPowerShell\v1.0\powershell_ise.exe" -WindowStyle Maximized
exit
}
Restart-powershell