;; shortcuts will usually be right ctrl + something that I thought makes sense
; special keys:
;   ctrl    = ^     (>^ means right ctrl, <^ means left)
;   alt     = !
;   shift   = +
;   win     = #



;; show shortcuts



>^h::
    shortcuts =
(
/`tVS Code
c`tcalc.exe
PrtSc`tSnipping Tool (rect mode)
g`tGit Bash
m`tTask Manager
n`tOneNote
t`tCygwin Terminal
v`tVisual Studio
w`tweb browser (Firefox)
)

    MsgBox % shortcuts
Return

;; VS Code
>^/::
    Run "C:\Program Files\Microsoft VS Code\Code.exe"
Return

;; Snipping Tool
;; alt-s: snipping tool in rectangle mode
PrintScreen::
    Run %windir%\system32\SnippingTool.exe     ; open snipping tool
    WinActivate Snipping Tool                  ; move focus to the window...
    WinWaitActive Snipping Tool                ; ...and pause until it has focus
    Send !m                                    ; send alt+m (choose snip mode)
    Send r                                     ; send r (rectangular)
Return

;; calculator
>^c::
    Run calc
Return

;; git bash
>^g::
    Run "C:\Program Files\Git\git-bash.exe" --cd-to-home
Return

;; task manager
>^m::
    Run taskmgr
Return

;; OneNote
>^n::
    Run .\shortcuts\OneNote
Return

;; Visual Studio
>^v::
    Run "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe"
Return



;; terminal (cygwin)
>^t::
    Run "C:\cygwin64\bin\mintty.exe"
Return

;; web browser (firefox)
>^w::
    Run "C:\Program Files\Mozilla Firefox\firefox.exe"
Return

