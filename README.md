# CapslockNumpad

An Autohotkey script for Windows that lets you emulate a numeric keypad (numpad) on a keyboard that doesn't have it. Both NumLock modes are usable.


## Operation

Download and run `CapslockNumpad.exe`. The executable does not write anything to your computer, and you can put it anywhere.

Press `Ctrl + CapsLock` to toggle the numpad on and off. Press `\` (above the `Enter` key) to toggle NumLock.

The source code is in the `/src/` directory of this repo if you want to edit the script.

![Key layout diagram](images/keyboard_layout.png)

The tray icon for CapslockNumpad changes colour to indicate the state of the numpad (red for disabled, green for enabled). I recommend setting this icon to always be visible in the tray (in Windows 10: Right-click the taskbar → Taskbar settings → Notification area → Select with icons appear on the taskbar).
