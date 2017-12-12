;; random useful AutoHotKey stuff
; 

;; report that the script is loaded
TrayTip, AutoBox.ahk, Ready,, 17

;; makes send faster
SendMode Input 

;; CapsLock/NumLock constant states, they're used for shortcuts
SetCapsLockState AlwaysOff
SetNumLockState AlwaysOn

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
