; Intercept.ahk
;
; Including this script enables single-key hotkeys,
; defined below the #If In_Intercept() line. 

>^/::
    Sleep 1000
    Send {F24}
Return

F24::Return

;; determine if we're in intercept mode
In_Intercept()
{
    if (A_PriorHotkey = ">^/")
        return True
    else
        return False
}


;;;;;;;;;;;;;;;;;;;;;
#If In_Intercept()
;;------------------------------------------------------------------------------------------------------------------------
;; begin intercept-only hotkeys

c::
    MsgBox c
Return

;; end intercept hotkeys
;;------------------------------------------------------------------------------------------------------------------------
#If

; 