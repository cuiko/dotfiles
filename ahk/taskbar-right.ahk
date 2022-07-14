﻿;         ---任务栏位于右侧---
;        ---任务栏滚轮调节音量---
;       ---鼠标移右下角滚轮锁屏---
;      ---鼠标移右上角滚轮调节亮度---
;	 ---任务栏鼠标左/右划键切换虚拟桌面---
;========================================
#If _MouseIsOver("ahk_class Shell_TrayWnd")
  WheelLeft::
    Send ^#{Left}
    Return
  WheelRight::
    Send ^#{right}
    Return
  WheelUp::
    deviation := 5
    resW := A_ScreenWidth
    resH := A_ScreenHeight
    MouseGetPos, xpos, ypos,
    If (xpos >= (resW - deviation) && ypos <= deviation) {
      ; 右上角
      _MoveBrightness(5)
    } Else {
      Send {Volume_Up}
    }
    Return
  WheelDown::
    deviation := 5
    resW := A_ScreenWidth
    resH := A_ScreenHeight
    MouseGetPos, xpos, ypos,
    If (ypos >= (resH - deviation)) {
      ; 最下侧
      Run rundll32.exe user32.dll`,LockWorkStation
    } Else If (xpos >= (resW - deviation) && ypos <= deviation) {
      ; 右上角
      _MoveBrightness(-5)
    } Else {
      Send {Volume_Down}
    }
    Return
  MButton::
    Send {Volume_Mute}
    Return
#If