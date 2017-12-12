;; utility functions


;;------------------------------------------------------------------------------------------------------------------------
;; help stuff

; list all active hotkeys
!>^h::
    ListHotkeys
Return

; show help message
>^h::

helpmsg =
(

SHORTCUTS      (* - prefix optional)
prefix = Rctrl + Alt
----------------------------------------------
    * [ NumLock ] Calculator
    * [ PrtSc ] Snipping Tool (rect mode)
    [ \ ] Ubuntu bash (Rctrl only) 
    [ Tab ] Open TeamViewer to work laptop
    [ Win ] Windows command prompt
    [ C ] VS Code
    [ F ] File Explorer
    [ G ] Git Bash
    [ M ] Task Manager
    [ N ] OneNote
    [ V ] Visual Studio
    [ W ] Web browser (Firefox)


COMMANDS
prefix = Rctrl
----------------------------------------------
    [ CapsLock ] toggle AlwaysOnTop for active window
    [ H ] Show help
    [ Q ] Close active window (send Alt-F4)
    [ R ] Reload toolbox.ahk
    [ Up ] Raise volume
    [ Down ] Lower volume
    [ w|a|s|d ] arrow keys

)

MsgBox % helpmsg
Return
;;------------------------------------------------------------------------------------------------------------------------



; close the window
>^q::
    Send !{F4}
Return

; reload the main script
>^r::
    Reload
Return

; send 120 dashes (I use this to end sections in code)
>^Space::
    Send {- 120} 
Return

; toggle AlwaysOnTop for active window
; toggle active window always on top
CapsLock::
    WinGetActiveTitle, title
    msg := "Toggled AlwaysOnTop for:`n`n" . title
    TrayTip, AutoBox, %msg%,, 17
    WinSet, AlwaysOnTop, Toggle, %title%
    
Return

; show open windows
>^Tab::
    Send #{Tab}
Return


;;------------------------------------------------------------------------------------------------------------------------
;; ESDF for arrow keys

>^w::
    Send {Up}
Return

>^a::
    Send {Left}
Return

>^s::
    Send {Down}
Return

>^d::
    Send {Right}
Return

;;------------------------------------------------------------------------------------------------------------------------
;; sound

; raise volume
>^Up::Volume_Up
; Return

; lower volume
>^Down::Volume_Down
Return

; shrink window horizontal
>^Right::
    
Return
; shrink window vertical

; expand horizontal

; expand vertical
