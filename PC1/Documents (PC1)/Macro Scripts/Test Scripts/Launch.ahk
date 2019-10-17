#SingleInstance force


^j::


;Get message from buffer.






WinActivate, TextToSpeech 

sleep 350

Send, ^v

Loop 5
Send, {Tab}

Send, {Enter}

Loop 5
Send, +{Tab}

Send, ^a {Backspace}


;Skype Message /////////////////////////////


WinActivate, Conversation

Send, Esquilax, you have one minute remaining. {Enter}


















;Run, C:\Users\josh.boyce\Documents\Macro Scripts\WorkFlowy Beta.lnk ,, Max,
return
