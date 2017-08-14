SetTitleMatchMode 2
#WinActivateForce

~$^s::
IfWinActive, ahk
{
	Reload
}
return


::dgd::document.getElementById("")

^`::
send HMv3$888{enter}
return
;IfWinActive, TextPad
;{
;	Click, 300, 100
;}
return

^1::
send tpjc_admin{tab}
sleep 100
send 111Hello{enter}
return
    

!v::ControlSend, ,v, foobar2000
!+v::ControlSend, ,+v, foobar2000
!b::
ControlSend, ,{del}, foobar2000
ControlSend, ,v, foobar2000
return

;F1::
;Input, UserInput,  T5 L4, {enter}{ctrl}
;ControlSend, ,%UserInput%, foobar2000
;msgbox %UserInput%
;return

!q::
ifwinactive, stotest
{	
	winhide, stotest	
}
else
{
	winshow, stotest
	winactivate, stotest
}
return 

;!w::
;ifwinactive, ConvertorTest
;{	
;	winhide, ConvertorTest
;}
;else
;{
;	winshow, ConvertorTest
;	winactivate, ConvertorTest
;}
;return 


^!+F3::
i=1
loop
{
	
	IniRead, OutputVar, C:\Project\Code\SelfCreatedTool\stock\alert.ini, contact%i%, phone
	if OutputVar = ERROR  
	   break
	;MsgBox, The value is %OutputVar%.
	ControlSetText, Edit1, %OutputVar%, SMS Sender

	IniRead, OutputVar, C:\Project\Code\SelfCreatedTool\stock\alert.ini, contact%i%, message
	ControlSetText, Edit2, %OutputVar%, SMS Sender
	;MsgBox, The value is %OutputVar%.

	ControlClick, Button2, SMS Sender
	
	WinWait, SMS Sender, successfully, 20
	if ErrorLevel
	{
	    ;MsgBox, WinWait timed out.
	    return
	}
	else
	    winclose
	i++
}
FileDelete, C:\Project\Code\SelfCreatedTool\stock\alert.ini
return


+F1::
;; hellomkt v3 release
FileCopy, C:\Project\Code\hellomkt_v3\dist\hellomkt_v3.jar, C:\software\apache-tomcat-6.0.16\apache-tomcat-6.0.16\webapps\hellomkt_v3\WEB-INF\lib, 1
;;FileCopy, C:\Project\Code\caas\dist\caas.jar, C:\software\apache-tomcat-6.0.16\apache-tomcat-6.0.16\webapps\hellomkt_v3\WEB-INF\lib, 1
msgbox, Done!
return		

+F2::
;; hellomkt v3 release to corsuscant
FileCopy, C:\Project\Code\hellomkt_v3\dist\hellomkt_v3.jar, \\10.26.2.27\krazy\tomcat_hellomkt_v3\webapps\hellomkt\WEB-INF\lib, 1
msgbox, Done!
return		

+F3::
;; hello unsub release to corsuscant
FileCopy, C:\Project\Code\hello_unsub\dist\hello_unsub.jar, \\10.26.2.27\krazy\tomcat_hellomkt_v3\webapps\hello_unsub\WEB-INF\lib, 1


;; hellomkt v1 release
;FileCopy, C:\Project\Code\hellomkt_v1\dist\hellomkt_v1.jar, \\10.26.2.12\krazy\tomcat_hellomkt_dev\webapps\hellomkt\WEB-INF\lib, 1


;;simple campaign release
;FileCopyDir, C:\Project\Code\simple_campaign\classes\hello, C:\software\apache-tomcat-6.0.16\apache-tomcat-6.0.16\webapps\campaign\WEB-INF\classes\hello, 1
;FileCopyDir, C:\Project\Code\SelfCreatedTool\cctv\sql, C:\Project\Code\SelfCreatedTool\cctv\workspace\sql, 1


;;cctv dowloader release	
;FileCopy, C:\Project\Code\SelfCreatedTool\cctv\dist\cctv.jar, C:\Project\Code\SelfCreatedTool\cctv\workspace\lib, 1
;FileCopy, C:\Project\Code\SelfCreatedTool\cctv_ui\dist\cctv_ui.jar, C:\Project\Code\SelfCreatedTool\cctv\workspace\lib, 1
;FileCopy, C:\Project\Code\mu_util\dist\mu_util.jar, C:\Project\Code\SelfCreatedTool\cctv\workspace\lib, 1
;FileCopyDir, C:\Project\Code\SelfCreatedTool\cctv\config, C:\Project\Code\SelfCreatedTool\cctv\workspace\config, 1
;FileCopyDir, C:\Project\Code\SelfCreatedTool\cctv\sql, C:\Project\Code\SelfCreatedTool\cctv\workspace\sql, 1

;FileCopyDir, C:\Project\Code\rtdp_v4\build\classes\hello, \\10.26.2.12\krazy\rtdp_staging\classes_SE6\hello, 1

;FileCopyDir, C:\Project\Code\mParking\build\classes\hello, \\10.26.2.12\krazy\tomcat_hdb\webapps\mparking\WEB-INF\classes\hello, 1
;FileCopy, C:\Project\Code\mParking\lib\RTDP_SE6.jar, \\10.26.2.12\krazy\tomcat_hdb\webapps\mparking\WEB-INF\lib, 1

;FileCopy, C:\Project\Code\mParking\dist\mParking.jar, \\10.26.2.12\krazy\tomcat_hdb_pengmu\webapps\mparking\WEB-INF\lib, 1
;FileCopy, C:\Project\Code\ResourceMonitor\ResMonitor\dist\ResMonitor.jar, \\10.26.2.12\krazy\scripts\resmonitor\, 1
;FileCopy, C:\Project\Code\ResourceMonitor\ResMonitor\dist\ResMonitor.jar, \\10.26.2.12\krazy\scripts\resmonitor\resmonitor_script\one_net\arches, 1
;FileCopy, C:\Project\Code\ResourceMonitor\ResMonitor\dist\ResMonitor.jar, \\10.26.2.12\krazy\scripts\resmonitor\resmonitor_script\sing_net\carina, 1
;FileCopy, C:\temp\resmonitor_script\arches\*.bat, \\10.26.2.12\krazy\scripts\resmonitor\resmonitor_script\one_net\arches, 1
;FileCopy, C:\temp\resmonitor_script\arches\*.js, \\10.26.2.12\krazy\scripts\resmonitor\resmonitor_script\one_net\arches, 1
;FileCopy, C:\Project\Code\ResourceMonitor\ResMonitorClient\dist\*, C:\software\apache-tomcat-6.0.16\apache-tomcat-6.0.16\webapps\test1\WEB-INF\lib\, 1
;FileCopy, C:\Project\Code\ResourceMonitor\ResMonitorClient\dist\lib\*, C:\software\apache-tomcat-6.0.16\apache-tomcat-6.0.16\webapps\test1\WEB-INF\lib\, 1
;FileCopy, C:\Project\Code\ResourceMonitor\ResMonitorClient\dist\*, \\10.26.2.12\krazy\scripts\resmonclient\, 1
;FileCopy, C:\Project\Code\ResourceMonitor\ResMonitorClient\dist\lib\*, \\10.26.2.12\krazy\scripts\resmonclient\lib\, 1
;FileCopy, C:\Project\Code\ResourceMonitor\ResMonitorClient\config\*, \\10.26.2.12\krazy\scripts\resmonclient\config, 1
msgbox, Done!
return				  

!`::
;run C:\Classes\compileRmi.bat
;FileCopy, C:\Classes\resmonitor\ResMonitorSvr_Stub.class, \\10.26.2.12\krazy\classes\resmonitor\, 1
;return
ifwinactive, ahk_class ThunderRT6FormDC
{	
	winhide, ahk_class ThunderRT6FormDC	
}
else
{
	winshow, ahk_class ThunderRT6FormDC
	winactivate, ahk_class ThunderRT6FormDC
}
return 

!1::
ControlSend, , s, ahk_class ThunderRT6FormDC
sleep 7000
ControlSend, , d, ahk_class ThunderRT6FormDC
return

!2::
ControlSend, , s, ahk_class ThunderRT6FormDC
sleep 7000
ControlSend, , f, ahk_class ThunderRT6FormDC
return

!3::
ControlSend, , s, ahk_class ThunderRT6FormDC
sleep 1000
ControlSend, , d, ahk_class ThunderRT6FormDC
return



!4::
Loop
{
    Input, i,  T100 L100, {enter}
    if(i == "q")
    	break
    else if (i == "r")
    {
	ifwinactive, ahk_class ThunderRT6FormDC
	{	
		winhide, ahk_class ThunderRT6FormDC	
	}
	else
	{
		winshow, ahk_class ThunderRT6FormDC
		winactivate, ahk_class ThunderRT6FormDC
	}
	continue
    }

    ControlSetText, ThunderRT6TextBox2, %i%, ahk_class ThunderRT6FormDC
    sleep 1000
    ControlSend, ThunderRT6TextBox2, {enter}, ahk_class ThunderRT6FormDC
}
return

!5::
ControlSetText, ThunderRT6TextBox2, , ahk_class ThunderRT6FormDC
return

!s::
ControlSend, , {F9}, ahk_class ThunderRT6FormDC
sleep 1000
Click, 226, 436
sleep 1000
Click, 226, 436
return




!w::
ControlSend, , s, ahk_class ThunderRT6FormDC
return



!z::
FileCopy, C:\Project\Code\hello-eventengine_v2\build\lib\hello-eventengine.jar, \\10.26.2.12\krazy\tmp\, 1
sleep 200
ControlSend, ,{enter}, 10.26.2.12
sleep 200
ControlSend, , /home/krazy/scripts/release/hellomkt_jar_nile.sh , 10.26.2.12
sleep 200
ControlSend, ,{enter}, 10.26.2.12
;run C:\Project\Code\ResourceMonitor\ResMonitorClient\run.bat
;sleep 200
;send lookup //10.26.2.12:4099/res
;send {enter}
return

;!x::
;run C:\Project\Code\ResourceMonitor\ResMonitor\run.bat
;return

;!c::
;run C:\Project\try\batch-31Oct2008\resmonitor_copy_scritp_from_sierra_to_others.bat
;return


#IfWinActive, ahk_class CabinetWClass
{
	BS::
	{
	 ;msgbox A_CaretX=%A_CaretX%
	 if (A_CaretX == 182)
	  {
	     Send {Alt Down}{Up}{Alt Up}
	  }
	 else
	  {
	     Send {BS}
	  }
	}
	return
}
#IfWinActive

F1::
ControlSend, , {F5}, ahk_class MozillaUIWindowClass
return


^F1::
ifwinnotactive, ahk_class MozillaUIWindowClass
	winactivate,  ahk_class MozillaUIWindowClass
Send {F5}
return

+Enter::
;msgbox 100
ControlClick, , A, , right
return

F12::
;msgbox 100
Click
return

;a::Click


!F2::
run c:\software\putty\putty.exe -load galaxy
WinWaitActive, 10.26.2.12, , 4
if ErrorLevel
{
    MsgBox, WinWait timed out.
    return
}
else
{
    sleep 1500
    send r@1nDr0p{enter}
}
return


+F12::
Input, i,  T10 L10, {enter}
if(i=="e")
{
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
	
}
else if(i == "r")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1500
	    send ssh rocky{enter}
	}
	
}
else if(i == "sm")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh smoky{enter}
	    
	}
}	
else if(i == "sd1")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh stsindbsvr1{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sd2")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh stsiddbsvr2{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sd3")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh stsinhmdbsvr{enter}
	    
	}
}	
else if(i == "sd4")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh hsbcdb{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sd5")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh hmsvr5db{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sd7")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh hmanzdb{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sd8")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh dbsibchq1db{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sd9")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh hmscbdb{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sh1")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh stsinhmsvr1{enter}
	    
	}
}	
else if(i == "sh2")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh stsidhmsvr2{enter}
	    
	}
}	
else if(i == "sh3")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh hmsvr3{enter}
	    
	}
}	
else if(i == "sh4")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh hmsvr4{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sh5")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh hmsvr5{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sh6")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh hmsvr6{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sh7")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh hmanz{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sh8")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh dbsibchq1{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sh9")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh hmscb{enter}
	    sleep 1000
	    send Dr0pR@1n{enter}
	    
	}
}	

else if(i == "sn1")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh senoko1{enter}
	    
	}
}	
else if(i == "sn2")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh senoko2{enter}
	    sleep 1200
	    send Dr0pR@1n{enter}
	    
	}
}	
else if(i == "sl1")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh siloso1{enter}
	    
	}
}	
else if(i == "sl2")
{
	;msgbox sm
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1000
	    send ssh siloso2{enter}
	    
	}
}	
else if(i == "a")
{
	run c:\software\putty\putty.exe -load everest
	WinWaitActive, everest, , 10
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1000
	    send ssh aquila{enter}
	}
}	
else if(i == "nl")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send ssh rocky{enter}
	}
	WinWaitActive, rocky, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1000
	    send ssh nile{enter}
	}
}	
else if(i == "sl")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send ssh rocky{enter}
	}
	WinWaitActive, rocky, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1000
	    send ssh saltlake{enter}
	}
}	
else if(i == "de")
{
	run c:\software\putty\putty.exe -load denali-external-krazy
}	
else if(i == "d")
{
	run c:\software\putty\putty.exe -load denali-local-krazy
}	
else if(i == "dec")
{
	run c:\software\putty\putty.exe -load denali-external-cvs
}	
else if(i == "dc")
{
	run c:\software\putty\putty.exe -load denali-local-cvs
}	
else if(i == "nt")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
}
else if(i == "nb1")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1500
	    send ssh naboo1{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	

else if(i == "nb2")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1500
	    send ssh naboo2{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "nb3")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1500
	    send ssh naboo3{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "nb4")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1500
	    send ssh naboo4{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "nb5")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1500
	    send ssh naboo5{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "nb6")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1500
	    send ssh naboo6{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "nb7")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1500
	    send ssh naboo7{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "nb8")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 1500
	    send ssh naboo8{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "np1")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 2000
	    send ssh neptune1{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "np2")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 2000
	    send ssh neptune2{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "np3")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 2000
	    send ssh neptune3{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}
else if(i == "np4")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 2000
	    send ssh neptune4{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "ct")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 2000
	    send ssh hmciti{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "ctdb")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 2000
	    send ssh hmcitidb{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "mc")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 2000
	    send ssh hmmccy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "mcdb")
{
	run c:\software\putty\putty.exe -load newton
	WinWaitActive, newton, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1500
	    send su - krazy{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	    sleep 2000
	    send ssh hmmccydb{enter}
	    sleep 1500
	    send Dr0pR@1n{enter}
	}
}	
else if(i == "c")
{
	run c:\software\putty\putty.exe -load corsuscant
	WinWaitActive, 10.26.2.181, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1000
	    send Dr0pR@1n{enter}
	}
	
}
else if(i == "t")
{
	run c:\software\putty\putty.exe -load typhoon
	WinWaitActive, 10.26.2.208, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1000
	    send Dr0pR@1n{enter}
	}
	
}
else if(i == "uu")
{
	run c:\software\putty\putty.exe -load uob-uat
	WinWaitActive, 10.26.2.16, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1000
	    send Dr0pR@1n{enter}
	}
	
}
else if(i == "cmu")
{
	run c:\software\putty\putty.exe -load cm-uat
	WinWaitActive, 10.26.2.185, , 4
	if ErrorLevel
	{
	    MsgBox, WinWait timed out.
	    return
	}
	else
	{
	    sleep 1000
	    send Dr0pR@1n{enter}
	}
	
}


return


::rdpw::
    send r@1nDr0p{enter}
return





!r::
send {Alt down}i{Alt Up}
sleep 500
send r
;send {Alt Up}
sleep 500
send {Alt down}i{Alt Up}
sleep 500
send w
;send {Alt Up}
return


