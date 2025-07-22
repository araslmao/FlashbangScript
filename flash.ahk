Gui, -Caption +AlwaysOnTop +ToolWindow
Gui, Color, White
Gui, Show, x0 y0 w%A_ScreenWidth% h%A_ScreenHeight%, Flashbang

; Set to full opacity immediately (no fade-in)
WinSet, Transparent, 255, Flashbang

; Hold at full opacity
Sleep, 4000  ; Hold for 4 seconds (total time ~4.45s with fade-out)

; Fade out
Loop, 30
{
    WinSet, Transparent, % (255 - (A_Index * 255 // 30)), Flashbang
    Sleep, 15
}

Gui, Destroy
ExitApp
