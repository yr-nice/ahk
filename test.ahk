SetTitleMatchMode 2
#WinActivateForce

~$^s::
IfWinActive, ahk
{
	Reload
}
return

+F1::
msgbox 100
FileCopy, C:\Project\Code\mParking\build\classes\*, \\10.26.1.12\krazy\tomcat_hdb\webapps\mparking\WEB-INF\classes, 1
msgbox 200
FileCopy, C:\Project\Code\mParking\src\lib\RTDP_SE6.jar, \\10.26.1.12\krazy\tomcat_hdb\webapps\mparking\WEB-INF\lib, 1
msgbox 300
return				  

F12::
;msgbox 100
Loop, 100
{
	SendInput ^4
	sleep 500
	Send !{tab}

	sleep 1000
	SendInput ^v
	sleep 200
	Send {tab}
	sleep 200
	SendInput {enter}
	sleep 1000
	Send !{tab}
	sleep 1500
}

return

Numpad3::
Loop, 300
{
	;msgbox 100
	SendInput 1
	sleep 200
	SendInput 9
	sleep 200
	Send {right}
	sleep 300
}
return


