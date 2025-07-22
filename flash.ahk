; flashbang_fade.ahk

Gui, -Caption +AlwaysOnTop +ToolWindow
Gui, Color, White
Gui, Show, x0 y0 w%A_ScreenWidth% h%A_ScreenHeight%, Flashbang

; Fade in
Loop, 30
{
    WinSet, Transparent, % (A_Index * 255 // 30), Flashbang
    Sleep, 15
}

; Hold at full opacity
WinSet, Transparent, 255, Flashbang
Sleep, 4000  ; Hold for 4 seconds (total time ~5s with fades)

; Fade out
Loop, 30
{
    WinSet, Transparent, % (255 - (A_Index * 255 // 30)), Flashbang
    Sleep, 15
}

Gui, Destroy
ExitApp