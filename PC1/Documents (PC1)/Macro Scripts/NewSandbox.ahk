

#SingleInstance force







Gui, Add, Text, x60 y35 w150 h15, Presentation Countdown:
Gui, Add, Text, x186 y35 w150 h15 vUserVar,
Gui, Add, Text, x78 y75 w150 h15, Meeting Duration:
Gui, Add, Text, x168 y75 w150 h15 vDurVar,
Gui Add, Button, x30 y120 w200 h30 gRun, START
Gui Add, Button, x30 y160 w200 h30 vcd_Button, PAUSE
Gui Add, Button, x30 y200 w200 h30, NEXT
Gui Show, h250 w260, Moderator

durNum := 10
GuiControl, Text, DurVar, %durNum%

metNum := 11
GuiControl, Text, UserVar, %metNum%

return









Run()



Run()
{
SetTimer RunCommand, 4000
}







RunCommand:
msgbox, run command
SetTimer FuncCall, 1000
Return


FuncCall:
metNum := metNum + 1
text := "This is a full sentence and the number is " + metNum
Send, %text%
msgbox, %text%
SetTimer,, Delete
Return







































/*
d_FormTime(d_PassedSec)
{
	
	xSec := Mod(d_PassedSec, 60)
	if (xSec < 10)
		{
			xSec := "0" + xSec
		}
	xMin := d_PassedSec / 60
	yMin := Floor(xMin)
	xTime = %yMin%:%xSec%

	GuiControl, Text, DurVar, %xTime%
	
	Return xTime
}

*/
		


	
	/*
StartMeeting(PassedSec, PassedCounter)
{
	TimeCount := PassedSec
	
	Loop, %PassedCounter%
	{
		
		FormatTime(TimeCount)
		
		if (TimeCount = 540)
		{
			TimerStart()
		}
		
		else if (TimeCount = 60)
		{
			1MinWarning()
		}
		
		else if (TimeCount = 0)
		{
			TimeUpWarning()
		}
		TimeCount := TimeCount-1
		sleep 1000
	}
}
	
	*/
	
	













/*
GuiControl,, UserVar, % "4"
sleep 1000
GuiControl,, UserVar, % "3"
sleep 1000
GuiControl,, UserVar, % "2"
sleep 1000
GuiControl,, UserVar, % "1"
sleep 1000
GuiControl,, UserVar, % "0"
return
*/
/*InputBox, OutputVar, Question 1, What is your first name?
if (OutputVar = "Bill")
MsgBox, That's an awesome name`,, %OutputVar%.
InputBox, OutputVar2, Question 2, Do you like AutoHotkey?
if (OutputVar2 = "yes")
MsgBox, Thank you for answering %OutputVar2%`, %OutputVar%! We will become great friends.
else
MsgBox, %OutputVar%`, That makes me sad.
*/










