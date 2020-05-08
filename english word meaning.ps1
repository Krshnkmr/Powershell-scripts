Function EnglishWordMeaning
{
#https://www.wordhippo.com/what-is/the-meaning-of-the-word/notion.html
[cmdletBinding()]
param(
[Parameter(Mandatory=$true)]
[string]$enter_the_word
)
Start-Process "C:\Program Files\Mozilla Firefox\firefox.exe" -ArgumentList ("https://www.wordhippo.com/what-is/the-meaning-of-the-word/"+  "$enter_the_word" +".html")
}

EnglishWordMeaning