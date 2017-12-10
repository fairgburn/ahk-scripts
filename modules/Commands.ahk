;; utility functions


;;------------------------------------------------------------------------------------------------------------------------
;; list all active hotkeys
+>^h::
    ListHotkeys
Return

;; show help message
>^h::

helpmsg =
(

SHORTCUTS      (* - prefix optional)
prefix = Rctrl + Shift
----------------------------------------------
    [ / ] VS Code
    [ *PrtSc ] Snipping Tool (rect mode)
    [ Tab ] Open TeamViewer to work laptop
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

;; send 120 dashes (I use this to end sections in code)
>^Space::
    Send {- 120} 
Return

;; toggle desktop (Dexpot)
CapsLock::
    Send !^{Right}
Return

;; show open windows
>^Tab::
    Send #{Tab}
Return

;;------------------------------------------------------------------------------------------------------------------------

;; sound

;; raise volume
>^Up::Volume_Up
; Return

;; lower volume
>^Down::Volume_Down
Return

;; shrink window horizontal
>^Right::
    
Return
;; shrink window vertical

;; expand horizontal

;; expand vertical
