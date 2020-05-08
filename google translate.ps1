Function Google-translate
{
[CmdletBinding()]
param(
[Parameter(Mandatory=$true)]
[string]$enter_the_text
)
Start-Process "C:\Program Files\Mozilla Firefox\firefox.exe" -ArgumentList ("https://translate.google.com/#view=home&op=translate&sl=auto&tl=ta&text=" + "$enter_the_text")
}

Google-translate