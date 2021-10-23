;By Kaneko Hato [https://twitter.com/kanekohato]
; ## Thanks To :
;- [Rohwedder] @AHK Forum
;- [BattleProgrammer] @BlackWings
;- [matiassingers] awesome-readme
;CC BY-SA 4.0
;v 2.0
;---

#SingleInstance, Force
!t::
Loop, Parse, TransIds, CSV
	WinSet, ExStyle, -0x00000020, ahk_id %A_LoopField%
MouseGetPos,,, Id
IF !InStr(TransIds, Id ",")
{
	WinSet, AlwaysOnTop, , ahk_id %Id%
	WinSet, Transparent, 100, ahk_id %Id%
	TransIds .= Id ","
}
Else
{
	WinSet, AlwaysOnTop, OFF , ahk_id %Id%
	WinSet, Transparent, OFF, ahk_id %Id%
	TransIds := StrReplace(TransIds, Id ",")
}
Loop, Parse, TransIds, CSV
	WinSet, ExStyle, +0x00000020, ahk_id %A_LoopField%
Return