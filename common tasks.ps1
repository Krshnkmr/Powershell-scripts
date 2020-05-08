#clear the recylcle bin
Clear-RecycleBin

#Delete the folders it delete the folder up to the last value presents
Remove-Item -Path "F:\Projects\Sample" -Exclude  "F:\Projects\Angular Js and Spring Boot"

#open Visual studio code and run as administrator
Start-Process "C:\Users\hp\AppData\Local\Programs\Microsoft VS Code\Code.exe" -Verb runAs -WindowStyle Maximized

#open Visual studio code
Start-Process "C:\Users\hp\AppData\Local\Programs\Microsoft VS Code\Code.exe" -WindowStyle Maximized

#open on-screen keyboard
start-process osk

#shut down the computer
Stop-Computer

#restart computer
Restart-Computer