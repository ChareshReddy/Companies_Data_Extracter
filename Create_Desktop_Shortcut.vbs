Set WshShell = CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop")

Set fso = CreateObject("Scripting.FileSystemObject")
currentDir = fso.GetParentFolderName(WScript.ScriptFullName)

Set oShellLink = WshShell.CreateShortcut(strDesktop & "\Companies Data Extractor.lnk")
oShellLink.TargetPath = currentDir & "\Launch_App.vbs"
oShellLink.WorkingDirectory = currentDir
oShellLink.WindowStyle = 1
oShellLink.Description = "Launch Companies Data Extraction Engine"
oShellLink.IconLocation = "shell32.dll, 15"
oShellLink.Save

MsgBox "Desktop shortcut created successfully!" & vbCrLf & vbCrLf & "You can now launch the Companies Data Extractor directly from your Desktop.", 64, "Shortcut Created"
