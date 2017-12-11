;; shortcuts will usually be alt + Rctrl + <key>
;; special keys:
;   ctrl    = ^
;   alt     = !
;   shift   = +
;   win     = #
;
;; < means left, > means right
;; so `!>^x` would be a hotkey for alt + Rctrl + x


;; Snipping Tool
;; alt-s: snipping tool in rectangle mode
*PrintScreen::
    Run %windir%\system32\SnippingTool.exe     ; open snipping tool
    WinActivate Snipping Tool                  ; move focus to the window...
    WinWaitActive Snipping Tool                ; ...and pause until it has focus
    Send !m                                    ; send alt+m (choose snip mode)
    Send r                                     ; send r (rectangular)
Return

; Windows command line
+>^LWin::
+>^RWin::
    Run cmd.exe /k cd %USERPROFILE%
Return

;; VS Code
!>^/::
    Run "C:\Program Files\Microsoft VS Code\Code.exe"
Return

;; calculator
!>^c::
    Run calc
Return

;; file explorer
!>^f::
    Run explorer
Return

;; git bash
!>^g::
    Run "C:\Program Files\Git\git-bash.exe" --cd-to-home
Return

;; task manager
!>^m::
    Run taskmgr
Return

;; OneNote
!>^n::
    Run .\shortcuts\OneNote
Return

;; Visual Studio
;; (try/catch so this will work at home or at work)
!>^v::
    vs_free = C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe
    vs_pro = C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe

    Try {
        Run %vs_pro%
    }
    
    Catch {
        Run %vs_free%
    }
Return

;; terminal
!>^t::
    Run "C:\Windows\System32\bash.exe" ~
Return

;; web browser (firefox)
!>^w::
    Run "C:\Program Files\Mozilla Firefox\firefox.exe"
Return


