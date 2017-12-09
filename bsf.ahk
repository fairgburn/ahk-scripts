;; random useful AutoHotKey stuff

SendMode Input ; makes send faster

;; alt-s: snipping tool in rectangle mode
!s::
    Run, %windir%\system32\SnippingTool.exe     ; open snipping tool
    WinActivate, Snipping Tool                  ; move focus to the window...
    WinWaitActive, Snipping Tool                ; ...and pause until it has focus
    Send, !m                                    ; send alt+m (choose snip mode)
    Send, r                                     ; send r (rectangular)
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