;; shortcuts will usually be alt + Rctrl + <key>
;; special keys:
;   ctrl    = ^
;   alt     = !
;   shift   = +
;   win     = #
;
;; < means left, > means right
;; so `!>^x` would be a hotkey for alt + Rctrl + x


;; VS Code
+>^/::
    Run "C:\Program Files\Microsoft VS Code\Code.exe"
Return

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

;; Open work laptop in TeamViewer with Rctrl + Tab
;; Working with TeamViewer version 13.0.5640 (other versions not tested)
+>^Tab::

    computer_name = BFAIRBURN3

    ; get current mouse position so it can return later
    MouseGetPos origX, origY
    
    ; close TeamView window if it's already open
    WinClose TeamViewer

    ; Open the window
    Run "C:\Program Files (x86)\TeamViewer\TeamViewer.exe"
    
    ; Get window position info and resize it
    WinWait, TeamViewer,, 5 ; wait until the window is open
    WinMove, TeamViewer,,,, 1, 1   ; This will make the window the minimum size
                                   ; so now the following mouse clicks will be in
                                   ; the correct location
    WinGetPos X, Y,,,TeamViewer ; get top left corner of window

    ; move mouse to 'Computers & Contacts' area and click
    MouseClick, Left, X+10, Y+300, 2, 0 ; click twice so tabbing works next
    
    
    ; place cursor in the box to search for computers, clear the box
    ; and insert computer name
    Send {Tab 3}
    Send +{Home}{BackSpace} ; clear
    Send %computer_name%
    
    ; select the first computer found
    MouseClick, Left, X+90, Y+200,, 0

    ; send Enter key to TeamView it
    Send {Enter}

    ; return mouse to original position
    MouseMove origX, origY, 0
    
Return

;; calculator
+>^c::
    Run calc
Return

;; file explorer
+>^f::
    Run explorer
Return

;; git bash
+>^g::
    Run "C:\Program Files\Git\git-bash.exe" --cd-to-home
Return

;; task manager
+>^m::
    Run taskmgr
Return

;; OneNote
+>^n::
    Run .\shortcuts\OneNote
Return

;; Visual Studio
+>^v::
    Run "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE\devenv.exe"
Return

;; terminal (cygwin)
+>^t::
    Run "C:\cygwin64\bin\mintty.exe" -
Return

;; web browser (firefox)
+>^w::
    Run "C:\Program Files\Mozilla Firefox\firefox.exe"
Return


