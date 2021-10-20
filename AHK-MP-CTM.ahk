;By Kaneko Hato [https://twitter.com/kanekohato]
; ## Thanks To :
;- [Rohwedder] @AHK Forum
;- [BattleProgrammer] @BlackWings
;- [matiassingers] awesome-readme
;CC BY-SA 4.0
;v 1.0
;---

#SingleInstance, Force
!t::
transparentmode:=!transparentmode
if transparentmode
	Gosub, ClickThroughOn
else
	Gosub, ClickThroughOFF
Return

ClickThroughOn:
MouseGetPos,,, Id
WinSet, AlwaysOnTop, , ahk_id %Id%
WinSet, Transparent, 100, ahk_id %Id%
WinSet, ExStyle, +0x00000020, ahk_id %Id%
Return

ClickThroughOff:
WinSet, AlwaysOnTop, OFF , ahk_id %Id%
WinSet, Transparent, OFF, ahk_id %Id%
WinSet, ExStyle, OFF, ahk_id %Id%
Return