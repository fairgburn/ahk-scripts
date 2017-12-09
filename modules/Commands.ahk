;; utility functions


;;------------------------------------------------------------------------------------------------------------------------
;; show help
>^h::

helpmsg =
(

Shortcuts:      (* - Rctrl optional)
----------------------------------------------
Rctrl +
        [ / ] VS Code
        [ *PrtSc ] Snipping Tool (rect mode)
        [ Win ] Windows command prompt
        [ C ] Calculator
        [ G ] Git Bash
        [ M ] Task Manager
        [ N ] OneNote
        [ T ] Cygwin terminal
        [ V ] Visual Studio
        [ W ] Web browser (Firefox)


Commands
----------------------------------------------
Rctrl +
        [ H ] Show help
        [ Q ] Quit active program (send Alt-F4)
        [ R ] Reload toolbox.ahk
        [ Up ] Raise volume
        [ Down ] Lower volume

)

MsgBox % helpmsg
Return
;;------------------------------------------------------------------------------------------------------------------------


;; close the window
>^q::
    Send !{F4}
Return

;; reload the main script
>^r::
    MsgBox Reloading AutoHotkey
    Reload
Return


;;------------------------------------------------------------------------------------------------------------------------

;; sound

;; raise volume
>^Up::Volume_Up
Return

;; lower volume
>^Down::Volume_Down
Return