# Automatically Run an application and take a screenshot!
Have you ever needed to run an .exe many times for whatever reason (like to repro an specific bug), and also take a screenshot between each run?

This PowerShell script allows you to do just that!

## Requirements:
-Windows

-The ps1 script expects a specific folder structure to work! The provided path must contain two folders: Build (this is where you need to place your .exe), and Screenshots (this folder can be empty and is where it'll store the screenshots).
(I might improve this in the future, but it'll have to wait). 

## Steps:
1. Download the .ps1 script and place it somewhere in your directory
2. Open Windows PowerShell
3. Make sure you've set the execution policy for PowerShell. You can run the following in PowerShell ``` Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass ``` to set the execution policy only for this session. Otherwise you'll get an error similar to ```.ps1 is not digitally signed. The script will not execute on the system```.
4. Make sure the path you provide has a Build and Screenshots folder inside!
5. In PowerShell, run``` <Path_To_Script>\RunAndTakeScreenshot.ps1 "<Path_To_MyFolder>\MyFolder" 10 “<ExeNameGoesHere>.exe” ``` (where 10 is the number of times you wish to run the .exe)
6. Once you run it, it will start the loop to open the app, take the screenshot, close the app and so on as many times as you indicate.
7. Afterwards, you'll find the screenshots inside the "<Path_To_MyFolder>\MyFolder\Screenshots" folder



## Resources
[PowerShell execution policy](https://caiomsouza.medium.com/fix-for-powershell-script-not-digitally-signed-69f0ed518715)

[Take a screenshot with PowerShell](https://stackoverflow.com/questions/2969321/how-can-i-do-a-screen-capture-in-windows-powershell)

[PowerShell Stop-Process](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-process?view=powershell-7.4)

