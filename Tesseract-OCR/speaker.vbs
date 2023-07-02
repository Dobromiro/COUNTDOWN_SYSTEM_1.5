Dim message, sapi
message=InputBox(“Enter the text you want spoken”,”Speak This”)
Set sapi=CreateObject(“sapi.spvoice”)
sapi.Speak message