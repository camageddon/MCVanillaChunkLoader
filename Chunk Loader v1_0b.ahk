#NoEnv
#SingleInstance Force
SendMode Input
SetKeyDelay, 300, 300  ; ms between keystrokes

; ------------------------
; CONFIG
; ------------------------
filePath := "FILEPATH HERE" ; <-- change this to the full path of teleport.txt
delayBetweenCommands := 1500               ; ms between commands to allow chunks to load

; ------------------------
; HOTKEYS
; ------------------------
F8:: ; start sending
F9::Pause  ; pause the script
F10::ExitApp ; exit script

{
    FileRead, commands, %filePath%
    if (ErrorLevel) {
        MsgBox, Could not read file: %filePath%
        return
    }

    ; Split commands into lines
    Loop, Parse, commands, `n, `r
    {
        cmd := A_LoopField
        if (cmd = "")
            continue

        ; Open chat
        Send, t
        Sleep, 1000

        ; Send the command
        Send, %cmd%
        Sleep, 1000

        ; Press Enter
        Send, {Enter}
		Sleep, 700
		Send, {Escape}
		
        ; Wait for chunks to load
        Sleep, delayBetweenCommands
    }
    MsgBox, All commands sent!
}
return
