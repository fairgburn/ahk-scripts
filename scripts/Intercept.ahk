; Intercept.ahk
;
; Including this script enables single-key hotkeys
; by pressing Rctrl + /
;
; intmode hotkeys are defined below the #If In_Intercept() line. 
; 

;; flag indicates if interception mode is on
global intmode = False

;; toggle intmode
toggle()
{
    if (%intmode%) {
        intmode = False
    }
    else {
        intmode = True
    }
}

;; turn off intmode (called at end of hotkeys)
off()
{
    intmode = False
}


;; determine if we're in intercept mode
; for some reason the #If directive only works with a function, can't directly
; check %intmode% on that line
In_Intercept()
{
    if (%intmode%) {
        return True
    }
    else {
        return False
    }
}

;; hotkey to enable/cancle intmode
>^/::
    toggle() 
Return


;;;;;;;;;;;;;;;;;;;;;
#If In_Intercept()
;;------------------------------------------------------------------------------------------------------------------------
;; begin intercept-only hotkeys

Space::
    if (%intmode%) {
        msgbox intmode is true
    }
    else {
        msgbox intmode is false
    }
Return

c::
    MsgBox c
Return


;; end intercept hotkeys
;;------------------------------------------------------------------------------------------------------------------------
#If

; 