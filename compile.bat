@REM   The TIMEOUTs make time for the executable to be compiled and edited at each step.
@REM   Without them, some icons might not be overwritten properly.

"C:\Dropbox\Autohotkey\Ahk2Exe_L\Ahk2Exe.exe" /in "Capslock_Numpad.ahk" /icon "icons\numpad_green.ico"
@TIMEOUT 5

@REM Main program icon.
"C:\Dropbox\Apps\ResHacker\ResourceHacker.exe" -open Capslock_Numpad.exe -save Capslock_Numpad.exe -action addoverwrite -resource "icons\numpad_green.ico" -mask ICONGROUP,159,
@TIMEOUT 1


@REM 'Suspend' icon.
"C:\Dropbox\Apps\ResHacker\ResourceHacker.exe" -open Capslock_Numpad.exe -save Capslock_Numpad.exe -action addoverwrite -resource "icons\numpad_red.ico" -mask ICONGROUP,206,
@TIMEOUT 1


@PAUSE
