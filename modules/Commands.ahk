;; utility functions


;;------------------------------------------------------------------------------------------------------------------------
;; show help
+>^h::
    ListHotkeys
Return

>^h::

helpmsg =
(

SHORTCUTS      (* - prefix optional)
prefix = Rctrl + Shift
----------------------------------------------
    [ / ] VS Code
    [ *PrtSc ] Snipping Tool (rect mode)
    [ Win ] Windows command prompt
    [ C ] Calculator
    [ F ] File Explorer
    [ G ] Git Bash
    [ M ] Task Manager
    [ N ] OneNote
    [ T ] Cygwin terminal
    [ V ] Visual Studio
    [ W ] Web browser (Firefox)


COMMANDS
prefix = Rctrl
----------------------------------------------
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
    MsgBox Reloading %A_ScriptName%
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
