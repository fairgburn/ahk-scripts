;; random useful AutoHotKey stuff
; 

;; report that the script is loaded
MsgBox %A_ScriptName% is ready

;; makes send faster
SendMode Input 

;; set capslock to always off (it's a special shortcut to switch desktops)
SetCapsLockState AlwaysOff

;; load other scripts
#Include scripts\WindowDrag.ahk
#Include scripts\TeamViewerToWork.ahk
#Include modules\Shortcuts.ahk
#Include modules\Commands.ahk

#Include scripts\Intercept.ahk



;;------------------------------------------------------------------------------------------------------------------------


;; extra Logitech mouse buttons mapped to keystroke instead of Windows volume up command because 
;;   I usually set Rctrl-up/down to switch between workspaces on Linux VMs, so I can use mouse buttons
;;   to do that
;;   (see Commands.ahk)


;;------------------------------------------------------------------------------------------------------------------------



;------------------------------------------------------------------------------------------------------------------------
