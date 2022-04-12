Set WshShell = CreateObject("WScript.Shell" ) 
WshShell.Run chr(34) & "C:\Windows\Logs\Windows\Startup.bat" & Chr(34), 0 
Set WshShell = Nothing 
