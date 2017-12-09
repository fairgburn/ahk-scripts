;; random useful AutoHotKey stuff

SendMode Input ; makes send faster

;; load other scripts
#Include scripts/WindowDrag.ahk
#Include scripts/Shortcuts.ahk
#Include scripts/Commands.ahk


>^>!::
    Run http://google.com
Return


;;------------------------------------------------------------------------------------------------------------------------


;; extra Logitech mouse buttons mapped to keystroke instead of Windows volume up command because 
;;   I usually set win-alt-up/down to switch between workspaces on Linux VMs

;; win-alt-up: raise volume
#!Up::Volume_Up
Return

;; win-alt-down: lower volume
#!Down::Volume_Down
Return
;;------------------------------------------------------------------------------------------------------------------------


;; win-space: send 120 dashes (I use this to end sections in code)
#space::
Send ------------------------------------------------------------------------------------------------------------------------
Return
;;------------------------------------------------------------------------------------------------------------------------


