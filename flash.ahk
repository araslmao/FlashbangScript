Gui, -Caption +AlwaysOnTop +ToolWindow
Gui, Color, White
Gui, Show, x0 y0 w%A_ScreenWidth% h%A_ScreenHeight%, Flashbang

; Fade in (3x faster)
Loop, 30
{
    WinSet, Transparent, % (A_Index * 255 // 30), Flashbang
    Sleep, 3  ; Changed from 15 to 5 for 3x faster fade-in
}

; Hold at full opacity
WinSet, Transparent, 255, Flashbang
Sleep, 4000  ; Hold for 4 seconds (total time ~5s with fades)

; Fade out
Loop, 30
{
    WinSet, Transparent, % (255 - (A_Index * 255 // 30)), Flashbang
    Sleep, 3
}

Gui, Destroy
ExitApp
