;; Open work laptop in TeamViewer with Rctrl + Tab
;; Working with TeamViewer version 13.0.5640 (other versions not tested)
!>^Tab::

    computer_name = BFAIRBURN3

    ; get current mouse position so it can return later
    MouseGetPos origX, origY
    
    ; close TeamView window if it's already open
    ; WinClose TeamViewer

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