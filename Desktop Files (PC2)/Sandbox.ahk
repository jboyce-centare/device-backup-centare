




#SingleInstance force



TotalSec := 540
Counter := TotalSec + 1

Gui, Add, Text, x140 y25 w150 h15, Presentation Countdown:
;Gui, Add, Text, x268 y25 w150 h15 vUserVar, 
;Gui, Add, Text, x268 y35 w150 h15 vDemVar, 
;Gui, Add, Button, x175 y60 h30 w70 gRun, Start
Gui, show


SetTimer CountDownTimer, 2000

SetTimer TestTime, 4000

return


CountDownTimer:
msgbox, two
return


TestTime:
msgbox, four
return






























/*

















; CountDown.ahk - Countdown timer with sound alert
;
; Simple script that counts down specified number of seconds to zero.
; You can set up a sound file to be played at the end of countdown.
; Settings will be saved to INI file on exit.
;
; You can find the latest version here: http://www.autohotkey.com/forum/viewtopic.php?t=21375
;
; Tested with AutoHotkey 1.0.47.01
;
; Created by HuBa
; Contact: http://www.autohotkey.com/forum/profile.php?mode=viewprofile&u=4693

#SingleInstance Off  ; Allow multiple instances
#NoTrayIcon

cd_IniFile := A_ScriptDir "\CountDown.ini"

; Read settings from INI file
IniRead cd_Duration, %cd_IniFile%, Main, Duration, % 5*60
IniRead cd_PlaySound, %cd_IniFile%, Main, PlaySound, %True%
IniRead cd_SoundFile, %cd_IniFile%, Main, SoundFile, %A_ScriptDir%\




Gui Add, Text, x30 y20 w100 h20, &Hours:

Gui Add, Edit, x90 y18 w80 h20 Number vcd_HoursEdit gTimeEdited, % cd_Duration // 3600

Gui Add, Text, x30 y42 w100 h20, &Minutes:

Gui Add, Edit, x90 y40 w80 h20 Number vcd_MinutesEdit gTimeEdited, % mod(cd_Duration, 3600) // 60

Gui Add, Text, x30 y64 w100 h20, S&econds:

Gui Add, Edit, x90 y62 w80 h20 Number vcd_SecondsEdit gTimeEdited, % mod(cd_Duration, 60)

Gui Add, Text, x30 y86 w210 h20 vcd_DurationText

Gui Add, Checkbox, x30 y111 w200 h30 vcd_PlaySoundCheckBox, &Play sound at the end of countdown

GuiControl,, cd_PlaySoundCheckBox, %cd_PlaySound%

Gui Add, Button, x30 y140 w80 h22 gSoundFileBrowse, Sound &file:

Gui Add, Edit, x30 y164 w200 h20 vcd_SoundFileEdit, %cd_SoundFile%

Gui Add, Button, x180 y140 w50 h22 gPlayFinishSound, &Test

Gui Font, Bold

Gui Add, Button, x30 y200 w200 h30 vcd_Button gCountDownPress Default, &START

Gosub TimeEdited

Gui Show, h250 w260, CountDown

Gui +LastFound

cd_Gui := WinExist()  ; Remember Gui window ID

Return









CountDownPress:
GuiControlGet cd_ButtonCaption,, cd_Button
if cd_ButtonCaption = &STOP  ; Compare button text
	{
	  SetTimer CountDownTimer, Off
	  WinSetTitle ahk_id %cd_Gui%,, CountDown
	  GuiControl,, cd_Button, &START
	  Return
	}
	
cd_Duration := GetDurationInSec()

if cd_Duration <= 0
	{
	  MsgBox 16, Error, Invalid time.
	  Return
	}

WinSetTitle ahk_id %cd_Gui%,, %cd_Duration%  ; Refresh tray button text

GuiControl,, cd_Button, &STOP

SetTimer CountDownTimer, 1000

SetTimer TestTime, 2000

Return





TestTime:
msgbox, hello
Return





CountDownTimer:
cd_Duration--
WinSetTitle ahk_id %cd_Gui%,, %cd_Duration%  ; Refresh tray button text
if cd_Duration > 0
  Return
Gui Flash  ; Flash the tray button
GuiControlGet cd_PlaySound,, cd_PlaySoundCheckBox
if cd_PlaySound  ; Play sound if checked
  Gosub PlayFinishSound  ; Let me hear that sound!
Gosub CountDownPress
Return





SoundFileBrowse:
FileSelectFile cd_SoundFile, 1, %cd_SoundFile%  ; Open file selection dialog
if cd_SoundFile
  GuiControl,, cd_SoundFileEdit, %cd_SoundFile%
Return





PlayFinishSound:
GuiControlGet cd_SoundFile,, cd_SoundFileEdit  ; Get filename
IfExist %cd_SoundFile%
  SoundPlay %cd_SoundFile%
Return






TimeEdited:  ; Update duration text
GuiControl,, cd_DurationText, % "Duration: " GetDurationInSec() " seconds"
Return

GetDurationInSec()
{
local Hours, Minutes, Seconds
GuiControlGet Hours,, cd_HoursEdit
GuiControlGet Minutes,, cd_MinutesEdit
GuiControlGet Seconds,, cd_SecondsEdit
Return Hours * 3600 + Minutes * 60 + Seconds
}

GuiClose:  ; Close window, save settings to INI file
GuiControlGet cd_PlaySound,, cd_PlaySoundCheckBox
GuiControlGet cd_SoundFile,, cd_SoundFileEdit
IniWrite % GetDurationInSec(), %cd_IniFile%, Main, Duration
IniWrite %cd_PlaySound%, %cd_IniFile%, Main, PlaySound
IniWrite %cd_SoundFile%, %cd_IniFile%, Main, SoundFile
ExitApp  ; Exit from script
Return





*/