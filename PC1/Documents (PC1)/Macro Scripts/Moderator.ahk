#SingleInstance force


; 9 = 540, 8 = 480, 7 = 420, 6 = 360, 5 = 300, 4 = 240, 3 = 180, 2 = 120





;  /////////// VARIABLES /////////// 

TotalSec := 540

DurCount := 0

isPaused := false

clipboard :=

;  ///////////////////////////////





;  /////////// GUI CONTROL /////////// 

Gui, Add, Text, x60 y35 w150 h15, Presentation Countdown:
Gui, Add, Text, x186 y35 w150 h15 vUserVar,
Gui, Add, Text, x78 y75 w150 h15, Meeting Duration:
Gui, Add, Text, x168 y75 w150 h15 vDurVar,
Gui Add, Button, x30 y120 w200 h30  gStart, START
Gui Add, Button, x30 y160 w200 h30 vcd_Button gPause, PAUSE
Gui Add, Button, x30 y200 w200 h30 gNext, NEXT
Gui Show, h250 w260, Moderator

durNum := FormTime(DurCount)
GuiControl, Text, DurVar, %durNum%

metNum := FormTime(TotalSec)
GuiControl, Text, UserVar, %metNum%

return

;  /////////////////////////////////





;  /////////// BUTTON ACTIONS /////////// 

Start:
TotalSec := 540
SetTimer Pres_Countdown, 1000
SetTimer Meeting_Duration, 1000
Return	

Pause:
Gosub, TogglePause
Return

Next:
TotalSec := 540
Return

;  /////////////////////////////////





;  /////////// TIMERS ///////////// 
	
Meeting_Duration:
Num := FormTime(DurCount)
GuiControl, Text, DurVar, %Num%
DurCount := DurCount+1
Return
	

Pres_Countdown:

if (isPaused = false)

{
	p_Count := FormTime(TotalSec)

	GuiControl, Text, UserVar, %p_Count%
	
	if (TotalSec = 539)   ;180
	{
		3MinWarning()
	}
		
	else if (TotalSec = 535)   ;60
	{
		1MinWarning()
	}
	
	else if (TotalSec = 530)   ;10
	{
		10SecWarning()
	}
		
	else if (TotalSec = 525)   ;0
	{
		TimeUpWarning()
	}


	TotalSec := TotalSec -1
}	
Return

;  /////////////////////////////////








	

	
	
	
	
;  /////////// TIME WARNINGS ///////////// 



3MinWarning()
	{
		clipboard = You have 3 minutes remaining.
		WinActivate, Conversation
		Send, ^v {Enter}
		clipboard = 
		Gui, Flash , Off
	}		
	
1MinWarning()
	{
		clipboard = You have 1 minute remaining.
		WinActivate, Conversation
		Send, ^v {Enter}
		clipboard = 
		Gui, Flash , Off
	}
	
10SecWarning()
	{
		clipboard = You have 10 seconds remaining.
		WinActivate, Conversation
		Send, ^v {Enter}
		clipboard = 
		Gui, Flash , Off
	}		
	
TimeUpWarning()
	{
		clipboard = Your time is up.
		WinActivate, Conversation
		Send, ^v {Enter}
		clipboard = 
		Gui, Flash , Off
	}

return

;  /////////////////////////////////















;  /////////// FUNCTIONS ///////////// 

TogglePause:
if (isPaused = false)
{
	isPaused := true
	GuiControl,, cd_Button, CONTINUE
}
else
{
	isPaused := false
	GuiControl,, cd_Button, PAUSE

}
Return

	
FormTime(d_PassedSec)
{
	if (d_PassedSec < 0)
	{
		xTime = 0:00
	}
	
	else
	{
		xSec := Mod(d_PassedSec, 60)
		if (xSec < 10)
			{
				xSec := "0" + xSec
			}
		xMin := d_PassedSec / 60
		yMin := Floor(xMin)
		xTime = %yMin%:%xSec%
	}
	
	Return xTime
}

;  /////////////////////////////////

















