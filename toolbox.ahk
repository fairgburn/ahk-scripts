;; random useful AutoHotKey stuff

SendMode Input ; makes send faster

;; load other scripts
#Include scripts/WindowDrag.ahk
#Include modules\Shortcuts.ahk
#Include modules\Commands.ahk


>^x::
    msgbox ahk-x
Return


;;------------------------------------------------------------------------------------------------------------------------


;; extra Logitech mouse buttons mapped to keystroke instead of Windows volume up command because 
;;   I usually set win-alt-up/down to switch between workspaces on Linux VMs


;;------------------------------------------------------------------------------------------------------------------------


;; win-space: send 120 dashes (I use this to end sections in code)
#space::
    Send ------------------------------------------------------------------------------------------------------------------------
Return
;;------------------------------------------------------------------------------------------------------------------------


