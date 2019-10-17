#SingleInstance force




; Get Message from Buffer /////////////////////////////


WinActivate, Message 

Send, ^a
Send, ^x





; TextToSpeech /////////////////////////////


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

Send, ^v {Enter}


















;Run, C:\Users\josh.boyce\Documents\Macro Scripts\WorkFlowy Beta.lnk ,, Max,
return
