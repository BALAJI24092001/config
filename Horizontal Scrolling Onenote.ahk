if WinActive("ahk_exe ONENOTE.EXE")
{
; Shift+Wheel for horizontal scrolling
+WheelDown::Send("{WheelRight}")
+WheelUp::Send("{WheelLeft}")
}