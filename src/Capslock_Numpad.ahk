; CapslockNumpad 1.0.0 (2019-01-04)
; Desi Quintans
; https://github.com/DesiQuintans/CapslockNumpad

; An Autohotkey script for Windows that lets you emulate a numeric keypad
; (numpad) on a keyboard that doesn't have it. Both NumLock modes are usable.

; Press Ctrl + CapsLock to toggle the numpad on and off.
; Press \ (above Enter) to toggle NumLock.

; 789  ->  789
; uio  ->  456
; jkl  ->  123
; 0./  ->  0./
; *-=  ->  *-+



; ======================================

#NoEnv
#SingleInstance force
SetWorkingDir %A_ScriptDir%



; - Global vars and other setup ------------------------------

Menu, Tray, Icon, numpad_red.ico
SetNumLockState, On
numpad_toggle := false



; - Ctrl + CapsLock toggling ---------------------------------

^CapsLock::
    numpad_toggle := !numpad_toggle
    SoundPlay, *-1
    if (numpad_toggle == true) {
        Menu, Tray, Icon, numpad_green.ico
    } else {
        Menu, Tray, Icon, numpad_red.ico
    }
    Return



; - Rebinds --------------------------------------------------

#If (numpad_toggle == true && GetKeyState("NumLock", "T") == true)
    7::Numpad7
    8::Numpad8
    9::Numpad9

    u::Numpad4
    o::Numpad6

    j::Numpad1
    k::Numpad2
    l::Numpad3

    0::Numpad0
    SC034::NumpadDot  ; Period/Greater-Than key

    ;; Common
    i::Numpad5
    /::NumpadDiv
    =::NumpadAdd
    -::NumpadSub
    +8::NumpadMult
    SC02B::NumLock  ; Backslash/Pipe

#If (numpad_toggle == true && GetKeyState("NumLock", "T") == false)
    7::NumpadHome
    8::NumpadUp
    9::NumpadPgUp

    u::NumpadLeft
    o::NumpadRight

    j::NumpadEnd
    k::NumpadDown
    l::NumpadPgDn

    0::Numpad0
    SC034::NumpadDot  ; Period/Greater-Than key

    ;; Common
    i::Numpad5
    /::NumpadDiv
    =::NumpadAdd
    -::NumpadSub
    +8::NumpadMult
    SC02B::NumLock  ; Backslash/Pipe
