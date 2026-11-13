Set WshShell = CreateObject("WScript.Shell")
WshShell.Run Chr(34) & CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName) & "\Start_Dota2_Mold_Draft.bat" & Chr(34), 0
Set WshShell = Nothing
