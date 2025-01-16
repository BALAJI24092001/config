## A solution for horizontal scrolling in OneNote for Windows 11
This enables side-scrolling `Shift + Scroll` in OneNote for Windows 11.
### STEPS
* Download AutoHotKey
https://www.autohotkey.com/

* Create a `filename.ahk` file using notepad and paste this code:
```
if WinActive("ahk_exe ONENOTE.EXE")
{
; Shift+Wheel for horizontal scrolling
+WheelDown::Send("{WheelRight}")
+WheelUp::Send("{WheelLeft}")
}
```
* After saving the file, run the script and open OneNote.
