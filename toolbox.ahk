;; random useful AutoHotKey stuff

SendMode Input ; makes send faster

;; load other scripts
#Include scripts\WindowDrag.ahk
#Include modules\Shortcuts.ahk
#Include modules\Commands.ahk



;; testing stuff
>^x::
    ;MouseGetPos, [ OutputVarX, OutputVarY, OutputVarWin, OutputVarControl, 1|2|3]
    MouseGetPos X, Y
    ;MouseClick, WhichButton [, X, Y, ClickCount, Speed, D|U, R]
    MouseClick, Left, X, Y
Return


;;------------------------------------------------------------------------------------------------------------------------


;; extra Logitech mouse buttons mapped to keystroke instead of Windows volume up command because 
;;   I usually set win-alt-up/down to switch between workspaces on Linux VMs


;;------------------------------------------------------------------------------------------------------------------------


;; send 120 dashes (I use this to end sections in code)
>^Space::
    Send ------------------------------------------------------------------------------------------------------------------------
Return
;;------------------------------------------------------------------------------------------------------------------------


