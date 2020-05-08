#open firefox with home page
Start-Process "C:\Program Files\Mozilla Firefox\firefox.exe"

#open the mozilla add ons
Start-Process "C:\Program Files\Mozilla Firefox\firefox.exe" -ArgumentList "https://addons.mozilla.org/en-US/firefox/"

#open the youtube
Start-Process "C:\Program Files\Mozilla Firefox\firefox.exe" -ArgumentList "https://www.youtube.com"

#open the Google
Start-Process "C:\Program Files\Mozilla Firefox\firefox.exe" -ArgumentList "https://www.google.com"

#open Gmail
Start-Process "C:\Program Files\Mozilla Firefox\firefox.exe" -ArgumentList "https://mail.google.com/mail/"

#open firefox in private tab
[System.Diagnostics.Process]::Start("firefox.exe","-private-window duckduckgo.com")
[System.Diagnostics.Process]::Start("firefox.exe","-private-window https://hangouts.google.com")

#closing the firefox
Stop-Process -Name firefox
