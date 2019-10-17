;SendMode Input

#SingleInstance force

cn := 20
Gui, Add, Text, x50 y25 w200 h15 v2UV, Segment Countdown:
Gui, Add, Text, x160 y25 w200 h15 vUserVar, %cn%
Gui, show

sleep 4000
Loop, 21
{
GuiControl,, UserVar, %cn%
if (cn = 20)
{
TimerStart()
}
else if (cn = 15)
{
15SecWarn()
}
else if (cn = 5)
{
5SecWarn()
}
else if (cn = 0)
{
TimeUpWarn()
}
cn := cn-1
sleep 1000
}
TimerStart()
{
Send, Team 1, your time has begun.{Enter}
}
15SecWarn()
{
Send, Team 1, you have 15 seconds remaining.{Enter}
}
5SecWarn()
{
Send, Team 1, you have 5 seconds remaining.{Enter}
}
TimeUpWarn()
{
Send, Team 1, your time is up.{Enter}
}




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