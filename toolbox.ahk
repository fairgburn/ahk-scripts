;; random useful AutoHotKey stuff

SendMode Input ; makes send faster

;; load other scripts
#Include scripts\WindowDrag.ahk
#Include modules\Shortcuts.ahk
#Include modules\Commands.ahk


;; testing
>^>!x::

    ; get current mouse position so it can return later
    MouseGetPos origX, origY
    ;CoordMode, ToolTip|Pixel|Mouse [, Screen|Relative]
    
    ; close TeamView window if it's already open
    WinClose TeamViewer

    ; Open the window
    Run "C:\Program Files (x86)\TeamViewer\TeamViewer.exe"
    
    ; Get window position info and resize it
    WinWait, TeamViewer,, 5
    WinMove, TeamViewer,,,, 10, 10
    WinGetPos X, Y,,,TeamViewer

    ; move mouse to 'Computers & Contacts' area and click
    ;MouseMove X+10, Y+300
    Loop 2 {
        MouseClick, Left, X+10, Y+300,, 0
    }

    ; place cursor in the box to search for computers and clear the box
    Send {Tab 3}
    
    Send ^{BackSpace}

    ; put computer name in the search box
    Send bfairburn3
    ;Sleep, 1000
    ;Send {Down}
    ;Send {Enter}


    ; return mouse
    MouseMove origX, origY, 0
    
Return

>^+x::
    WinClose TeamViewer
Return

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


