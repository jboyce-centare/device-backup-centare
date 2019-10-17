#SingleInstance force

WinActivate, Meeting 
Send, {Right}
Send, +{End}
Send, ^c
WinActivate, Message
Send, ^v
Send, , please begin your presentation.
Run, C:\Users\josh.boyce\Documents\Macro Scripts\Broadcast Message.ahk

return